import 'package:chat/data/chat_message_dto.dart';
import 'package:chat/data/message_sender.dart';
import 'package:shared/api/models/abstract_user.dart';
import 'package:shared/api/user_types.dart';

final class ChatMessage {
  final AbstractUser sender;
  final String id;
  final String messageType;
  final String text;
  final DateTime createdAt;
  final DateTime? deliveredAt;
  final String status;

  const ChatMessage(
      {required this.sender,
      required this.id,
      required this.text,
      required this.createdAt,
      this.deliveredAt,
      required this.status,
      required this.messageType});

  factory ChatMessage.fromDTO(ChatMessageDTO dto) {
    return ChatMessage(
        sender: AbstractUser(id: dto.sender.id, userType: UserType.user),
        id: dto.id,
        text: dto.text,
        createdAt: dto.createdAt,
        status: dto.status,
        messageType: dto.messageType);
  }

  ChatMessageDTO toDTO() => ChatMessageDTO(
      sender: MessageSender(id: sender.id),
      id: id,
      text: text,
      createdAt: createdAt,
      status: status,
      messageType: messageType,
      deliveredAt: deliveredAt);

  ChatMessage copyWith({
    AbstractUser? sender,
    String? id,
    String? messageType,
    String? text,
    DateTime? createdAt,
    DateTime? deliveredAt,
    String? status,
  }) {
    return ChatMessage(
      sender: sender ?? this.sender,
      id: id ?? this.id,
      messageType: messageType ?? this.messageType,
      text: text ?? this.text,
      createdAt: createdAt ?? this.createdAt,
      deliveredAt: deliveredAt ?? this.deliveredAt,
      status: status ?? this.status,
    );
  }
}
