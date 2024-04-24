import 'package:json_annotation/json_annotation.dart';
import 'package:shared/api/models/abstract_user.dart';
import 'package:shared/api/user_types.dart';
import 'package:shared/typedefs/typedefs.dart';

part 'government_user.g.dart';

///Common user model which describes user state and behaviour
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GovernmentUserEntity extends AbstractUser {
  final GovernmentUserRole role;
  final DateTime startsFrom;

  GovernmentUserEntity(
      {required super.id,
      required super.name,
      required super.phone,
      required super.userType,
      required super.imagePath,
      required this.role,
      required this.startsFrom});

  factory GovernmentUserEntity.fromJson(Json json) =>
      _$GovernmentUserEntityFromJson(json);

  @override
  Json toJson() => _$GovernmentUserEntityToJson(this);
}

///User role type via different priviligeys
enum GovernmentUserRole { admin, lawyer, accountant }
