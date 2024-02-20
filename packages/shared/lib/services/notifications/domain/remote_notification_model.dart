import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_notification_model.freezed.dart';

class RemoteNotificationModel {
  RemoteNotificationModel({
    required this.scenario,
    required this.action,
  });

  final DeepLinkScenario scenario;
  final RemoteNotificationAction action;
}

enum DeepLinkScenario { orderDetails, category, referal, chat }

enum AppStateType { foreground, background }

@freezed
class RemoteNotificationAction with _$RemoteNotificationAction {
  const factory RemoteNotificationAction({
    required AppStateType type,
    required Function(String) callbackForeground,
    required Function(String) callbackBackground,
  }) = _RemoteNotificationActionBackground;
}
