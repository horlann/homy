import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/typedefs/typedefs.dart';
import 'package:shared/api/models/abstract_user.dart';

part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UserEntity extends AbstractUser {
  bool verified;
  final bool isOnline;
  final String? fcmToken;

  UserEntity({
    required super.id,
    required super.name,
    required super.phone,
    this.isOnline = false,
    this.verified = false,
    this.fcmToken,
  });

  factory UserEntity.fromJson(Json json) => _$UserEntityFromJson(json);

  Iterable get imageLinks => [];

  @override
  Json toJson() => _$UserEntityToJson(this);
}
