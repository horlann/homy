import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/typedefs/typedefs.dart';

part 'abstract_user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AbstractUser {
  final String id;
  final String? name;
  final String? phone;

  AbstractUser({
    required this.id,
    this.name,
    this.phone,
  });

  factory AbstractUser.fromJson(Json json) => _$AbstractUserFromJson(json);

  Json toJson() => _$AbstractUserToJson(this);
}
