import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

typedef CustomRouteBuilder = Route<T> Function<T>(
  BuildContext context,
  Widget child,
  RoutePage page,
);

///for example:
Route<T> customRoute<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) =>
    PageRouteBuilder(
      fullscreenDialog: true,
      settings: page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        ),
        child: child,
      ),
      pageBuilder: (_, __, ___) => child,
    );

Route<T> bottomSheetBuilder<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page, {
  bool isDismissible = true,
}) {
  return ModalBottomSheetRoute(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24),
      ),
    ),
    settings: page,
    builder: (context) => child,
    isScrollControlled: true,
    isDismissible: isDismissible,
  );
}

Route<T> staticBottomSheetBuilder<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (context) => child,
    isScrollControlled: false,
    isDismissible: false,
    enableDrag: false,
  );
}

Route<T> dialogRouteBuilder<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) =>
    DialogRoute(
      settings: page,
      builder: (context) => child,
      context: context,
      barrierColor: Colors.black54.withOpacity(0.75),
    );
