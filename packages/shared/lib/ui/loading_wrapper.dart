// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:

class LoadingWrapper extends StatelessWidget {
  const LoadingWrapper({
    required this.child,
    super.key,
    this.isLoading = false,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        Visibility(
          visible: isLoading,
          child: ColoredBox(
            color: Colors.white.withOpacity(0.1),
            child: const Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    );
  }
}
