import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/typedefs/typedefs.dart';

part 'active_image_link.g.dart';

@JsonSerializable()
class ActiveImageLink {
  final String imageLink;
  final bool selected;

  factory ActiveImageLink.fromJson(Json json) =>
      _$ActiveImageLinkFromJson(json);

  ActiveImageLink({required this.imageLink, required this.selected});

  Json toJson() => _$ActiveImageLinkToJson(this);
}
