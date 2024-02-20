// Dart imports:
import 'dart:io';

// Project imports:

// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared/logger/logger_service.dart';
import 'package:shared/services/notifications/domain/push_message.dart';

abstract class PushNotificationManager {
  PushNotificationManager();

  factory PushNotificationManager.create() {
    if (Platform.isIOS) {
      return IOSPushNotificationManager();
    }
    return AndroidPushNotificationManager();
  }

  void processPush(RemoteMessage message, bool foreground);

  Future<void> init();
}

//-----------------------------IOS------------------------------------------
class IOSPushNotificationManager extends PushNotificationManager {
  @override
  Future<void> init() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }

  @override
  void processPush(RemoteMessage message, bool foreground) {}
}

//-----------------------------ANDROID------------------------------------------

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

late AndroidNotificationChannel _notificationChannelDefault;
late AndroidNotificationChannel _notificationChannelChats;
late AndroidNotificationChannel _notificationChannelOrders;

class AndroidPushNotificationManager extends PushNotificationManager {
  final _pushParser = PushNotificationParser();

  bool _initialised = false;

  @override
  Future<void> init() async {
    if (_initialised) {
      return;
    }

    _notificationChannelDefault =
        const AndroidNotificationChannel('1101', 'default');
    _notificationChannelChats =
        const AndroidNotificationChannel('1102', 'chats');
    _notificationChannelOrders =
        const AndroidNotificationChannel('1103', 'orders');

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_notificationChannelDefault);

    _initialised = true;
  }

  @override
  void processPush(RemoteMessage message, bool foreground) {
    if (!_initialised) {
      throw Exception('AndroidPushNotificationManager must be initialised');
    }

    //parse push
    final pushMessage = _pushParser.parse(message, foreground);

    if (pushMessage == null) {
      LoggerService().log(
        "Can't parse push message with data: $message",
      );

      return;
    }

    _showNotification(pushMessage as AndroidPushMessage);
  }

  AndroidNotificationChannel? _getChannel(AndroidNotificationChannelType type) {
    switch (type) {
      case AndroidNotificationChannelType.defaultChannel:
        return _notificationChannelDefault;
      case AndroidNotificationChannelType.none:
        return null;
    }
  }

  void _showNotification(AndroidPushMessage<dynamic> pushMessage) {
    final channel = _getChannel(pushMessage.channel);

    if (channel == null) {
      return;
    }

    flutterLocalNotificationsPlugin.show(
      pushMessage.raw.hashCode,
      pushMessage.title ?? '',
      pushMessage.body ?? '',
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          icon: 'ic_notif', //name for icon from native
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      payload: pushMessage.payload,
    );
  }
}

class PushNotificationParser {
  PushNotificationParser();

  PushMessage<dynamic>? parse(RemoteMessage message, bool foreground) {
    return AndroidPushMessage(
      title: message.notification?.title,
      body: message.notification?.body,
      channel: AndroidNotificationChannelType.defaultChannel,
      type: PushType.defaultType,
      handlingTypes: [PushHandlingType.notification],
      data: message.data,
      raw: message,
    );
  }
}
