// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';

enum PushHandlingType { notification }

enum PushType {
  defaultType,
}

class PushMessage<Data> {
  PushMessage({
    required this.type,
    required this.handlingTypes,
    required this.data,
    required this.raw,
  });

  final Data? data;
  final RemoteMessage raw;
  final PushType type;
  final List<PushHandlingType> handlingTypes;
}

class AndroidPushMessage<Data> extends PushMessage<Data> {
  AndroidPushMessage({
    required this.channel,
    required super.type,
    required super.handlingTypes,
    required super.data,
    required super.raw,
    this.title,
    this.body,
    this.payload,
  });

  final String? title;
  final String? body;
  final String? payload;
  final AndroidNotificationChannelType channel;
}

enum AndroidNotificationChannelType {
  none,
  defaultChannel,
}
