// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbstractUser _$AbstractUserFromJson(Map<String, dynamic> json) => AbstractUser(
      id: json['id'] as String,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$AbstractUserToJson(AbstractUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
    };
