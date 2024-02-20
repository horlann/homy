import 'package:chat/data/message_sender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/typedefs/typedefs.dart';

part 'chat_message_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
final class ChatMessageDTO {
  final MessageSender sender;
  final String id;
  final String messageType;
  final String text;
  final DateTime createdAt;
  final DateTime? deliveredAt;
  final String status;

  const ChatMessageDTO(
      {required this.sender,
      required this.id,
      required this.text,
      required this.createdAt,
      this.deliveredAt,
      required this.status,
      required this.messageType});

  Json toJson() => _$ChatMessageDTOToJson(this);

  factory ChatMessageDTO.fromJson(Json json) => _$ChatMessageDTOFromJson(json);
}
