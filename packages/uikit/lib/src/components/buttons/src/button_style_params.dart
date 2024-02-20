import 'package:flutter/cupertino.dart';

final class ButtonStyleParams {
  ButtonStyleParams({
    required this.backgroundColor,
    required this.foregroundColor,
    this.border,
    this.borderRadius,
    this.textStyle,
    this.padding,
    this.height,
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final Border? border;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double? height;
}
