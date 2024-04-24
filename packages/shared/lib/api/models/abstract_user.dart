import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/api/user_types.dart';
import 'package:shared/typedefs/typedefs.dart';

part 'abstract_user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AbstractUser {
  final String id;
  final String? name;
  final String? phone;
  final String? imagePath;
  final UserType userType;

  const AbstractUser({
    required this.id,
    this.name,
    this.phone,
    this.imagePath,
    required this.userType,
  });

  factory AbstractUser.fromJson(Json json) {
    return _$AbstractUserFromJson(json);
  }

  Json toJson() => _$AbstractUserToJson(this);
}
