import 'dart:convert';

import 'package:shared/services/notifications/domain/remote_notification_model.dart';
import 'package:shared/typedefs/typedefs.dart';

class NotificationCallbackHandler {
  static final List<RemoteNotificationModel> _list = [];

  static void addModels(List<RemoteNotificationModel> models) {
    _list.addAll(models);
  }

  static Future<void> handleNotifications(
      {required Map<String, dynamic>? payload}) async {
    if (payload == null) {
      return;
    }
    final scenario = _convertValueToEnum(payload.keys.first);
    if (scenario == null) {
      return;
    }
    final action = _list.firstWhere((element) => element.scenario == scenario);
    action.action.callbackBackground(getValue(payload, scenario));
  }

  static String getValue(Json data, DeepLinkScenario scenario) {
    switch (scenario) {
      case DeepLinkScenario.orderDetails:
        final id = (jsonDecode(data.values.first) as Json)['id'];
        return id;
      case DeepLinkScenario.category:
        final id = (jsonDecode(data.values.first) as Json)['id'];
        return id;
      case DeepLinkScenario.referal:
        final id = (jsonDecode(data.values.first) as Json)['id'];
        return id;
      case DeepLinkScenario.chat:
        final id = (jsonDecode(data.values.first) as Json)['id'];
        return id;
    }
  }

  static DeepLinkScenario? _convertValueToEnum(String value) {
    try {
      return DeepLinkScenario.values.firstWhere(
        (e) => e.name == value,
      );
    } catch (e) {
      //logger.e('Error');
      return null;
    }
  }
}
