import 'package:flutter/material.dart';
// ignore_for_file: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_leading.freezed.dart';

@freezed
class ButtonLeading with _$ButtonLeading {
  const factory ButtonLeading.icon(IconData iconData, {Color? color}) =
      _ButtonLeadingIcon;

  const factory ButtonLeading.svgImage(SvgPicture image, {Color? color}) =
      _ButtonLeadingSvgImage;

  const factory ButtonLeading.image(Image image) = _ButtonLeadingImage;
}
