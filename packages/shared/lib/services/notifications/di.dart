import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/services/notifications/services/push_notifications_service.dart';

class NotificationsFeatureDependenciesResolver {
  static void resolve() {
    _domain();
  }

  static void _domain() {
    GetIt.instance.registerSingleton<PushNotificationsService>(
      FirebaseNotificationImpl(FirebaseMessaging.instance),
    );
  }
}
