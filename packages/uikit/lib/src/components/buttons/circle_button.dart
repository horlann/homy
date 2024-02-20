import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton({
    required this.color,
    required this.size,
    required this.onTap,
    super.key,
    this.isActive = true,
    this.child,
  });

  final Color color;
  final double size;
  final bool isActive;
  final VoidCallback onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: color,
        child: InkWell(
          customBorder: const CircleBorder(),
          splashFactory: isActive ? null : NoSplash.splashFactory,
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
