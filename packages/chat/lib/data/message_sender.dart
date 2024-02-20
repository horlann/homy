import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/typedefs/typedefs.dart';

part 'message_sender.g.dart';

@JsonSerializable()
class MessageSender {
  final String id;

  const MessageSender({required this.id});

  Json toJson() => _$MessageSenderToJson(this);

  factory MessageSender.fromJson(Json json) => _$MessageSenderFromJson(json);
}
