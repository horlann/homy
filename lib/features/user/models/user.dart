import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/api/user_types.dart';
import 'package:shared/typedefs/typedefs.dart';
import 'package:shared/api/models/abstract_user.dart';

part 'user.g.dart';

///Common user model which describes user state and
///behaviour
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UserEntity extends AbstractUser {
  final bool verified;
  final bool isOnline;
  final String? fcmToken;

  UserEntity({
    required super.id,
    required super.name,
    required super.phone,
    required super.userType,
     super.imagePath,
    this.isOnline = false,
    this.verified = false,
    this.fcmToken,
  });

  factory UserEntity.fromJson(Json json) => _$UserEntityFromJson(json);


  @override
  Json toJson() => _$UserEntityToJson(this);
}
