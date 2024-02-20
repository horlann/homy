// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: json['id'] as String,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      isOnline: json['is_online'] as bool? ?? false,
      verified: json['verified'] as bool? ?? false,
      fcmToken: json['fcm_token'] as String?,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'verified': instance.verified,
      'is_online': instance.isOnline,
      'fcm_token': instance.fcmToken,
    };
