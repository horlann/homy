// Dart imports:
import 'dart:async';

// Project imports:
// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared/services/notifications/services/push_notification_manager.dart';

abstract class PushNotificationsService {
  Future<String?> get token;

  Stream<String> get onTokenRefresh;

  Future<void> deleteToken();

  Stream<RemoteMessage> get openedPushStream;
}

class FirebaseNotificationImpl implements PushNotificationsService {
  FirebaseNotificationImpl(
    this._messaging,
  ) {
    _init();
  }

  final FirebaseMessaging _messaging;

  @override
  Stream<String> get onTokenRefresh => _streamController.stream;

  final StreamController<String> _streamController = StreamController();
  final BehaviorSubject<RemoteMessage> _pushStreamController =
      BehaviorSubject();

  @override
  Stream<RemoteMessage> get openedPushStream => _pushStreamController.stream;

  final _pushManager = PushNotificationManager.create();

  Future<void> _init() async {
    await _pushManager.init();
    final tokenn = await token;
    await _messaging.setAutoInitEnabled(true);
    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    _messaging.onTokenRefresh.listen(_streamController.add);
    await _onMessageListener();
    await backgroundListener();
  }

  @override
  Future<void> deleteToken() async {
    await _messaging.deleteToken();
  }

  Future<void> _onMessageListener() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        _pushManager.processPush(message, true);
      }
    });
  }

  Future<void> backgroundListener() async {
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
    await setupInteractedMessage();
  }

  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
  }

  void _handleMessage(RemoteMessage message) {
    _pushStreamController.add(message);
  }

  @override
  Future<String?> get token => _messaging.getToken();

  Future<void> dispose() async {
    await _streamController.close();
    await _pushStreamController.close();
  }
}
