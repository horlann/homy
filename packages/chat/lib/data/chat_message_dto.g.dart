// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageDTO _$ChatMessageDTOFromJson(Map<String, dynamic> json) =>
    ChatMessageDTO(
      sender: MessageSender.fromJson(json['sender'] as Map<String, dynamic>),
      id: json['id'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      deliveredAt: json['delivered_at'] == null
          ? null
          : DateTime.parse(json['delivered_at'] as String),
      status: json['status'] as String,
      messageType: json['message_type'] as String,
    );

Map<String, dynamic> _$ChatMessageDTOToJson(ChatMessageDTO instance) =>
    <String, dynamic>{
      'sender': instance.sender.toJson(),
      'id': instance.id,
      'message_type': instance.messageType,
      'text': instance.text,
      'created_at': instance.createdAt.toIso8601String(),
      'delivered_at': instance.deliveredAt?.toIso8601String(),
      'status': instance.status,
    };
