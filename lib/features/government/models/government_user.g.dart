// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'government_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GovernmentUserEntity _$GovernmentUserEntityFromJson(
        Map<String, dynamic> json) =>
    GovernmentUserEntity(
      id: json['id'] as String,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      userType: $enumDecode(_$UserTypeEnumMap, json['user_type']),
      imagePath: json['image_path'] as String?,
      role: $enumDecode(_$GovernmentUserRoleEnumMap, json['role']),
      startsFrom: DateTime.parse(json['starts_from'] as String),
    );

Map<String, dynamic> _$GovernmentUserEntityToJson(
        GovernmentUserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'image_path': instance.imagePath,
      'user_type': _$UserTypeEnumMap[instance.userType]!,
      'role': _$GovernmentUserRoleEnumMap[instance.role]!,
      'starts_from': instance.startsFrom.toIso8601String(),
    };

const _$UserTypeEnumMap = {
  UserType.user: 'user',
  UserType.admin: 'admin',
};

const _$GovernmentUserRoleEnumMap = {
  GovernmentUserRole.admin: 'admin',
  GovernmentUserRole.lawyer: 'lawyer',
  GovernmentUserRole.accountant: 'accountant',
};
