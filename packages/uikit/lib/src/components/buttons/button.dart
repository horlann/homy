import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.callback,
    required this.text,
    this.onLongPressCallback,
    super.key,
    this.backgroundColor,
    this.fontColor = Colors.white,
    this.isActive = true,
    this.horizontalTextPadding = 26,
    this.isLoading = false,
  });

  final VoidCallback callback;
  final VoidCallback? onLongPressCallback;
  final String text;
  final Color? backgroundColor;
  final Color fontColor;
  final double horizontalTextPadding;
  final bool isActive;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final appliedBackgroundColor =
        backgroundColor ?? context.theme.appColors.orangeOutrageous;
    return Material(
      color: isActive
          ? appliedBackgroundColor
          : appliedBackgroundColor.withOpacity(0.7),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: InkWell(
        onTap: isActive ? callback : null,
        onLongPress: isActive ? onLongPressCallback : null,
        child: Container(
          height: 54,
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: horizontalTextPadding,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: !isLoading
              ? Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: fontColor),
                )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
