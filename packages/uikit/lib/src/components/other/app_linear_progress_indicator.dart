import 'package:flutter/material.dart';

class AppLinearProgressIndicator extends StatelessWidget {
  const AppLinearProgressIndicator({
    super.key,
    this.backgroundColor,
    this.color,
    this.valueColor,
    this.minHeight = 4,
    this.value,
    this.borderRadius = BorderRadius.zero,
  });

  final Color? backgroundColor;
  final Color? color;
  final Animation<Color?>? valueColor;
  final double? minHeight;
  final BorderRadius borderRadius;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LinearProgressIndicator(
        backgroundColor: backgroundColor,
        color: color,
        valueColor: valueColor,
        minHeight: minHeight,
        borderRadius: borderRadius,
        value: value,
      ),
    );
  }
}
