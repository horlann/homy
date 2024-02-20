import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uikit/src/components/other/appbar/appbar_actions.dart';
import 'package:uikit/src/components/other/appbar/appbar_title.dart';

class AppDefaultAppbar extends AppAppbar {
  AppDefaultAppbar({
    required this.title,
    required this.leading,
    required this.trailing,
    super.key,
    super.decoration,
  }) : super();
  final AppbarTitle title;
  final AppbarActions leading;
  final AppbarActions trailing;

  @override
  Widget build(BuildContext context) {
    return AppAppbar(
      decoration: decoration,
      titleWidget: title.whenOrNull(
        customWidget: (widget) => widget,
        defaultText: (text, key) => Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      leadingWidget: leading.whenOrNull(
        customWidget: (widget) => widget,
        actionSvgPicture: (path, callback, key, rotation) => GestureDetector(
          key: key,
          onTap: callback,
          child: Container(
            color: Colors.transparent,
            width: 32,
            height: 32,
            child: Center(
              child: RotatedBox(
                quarterTurns: rotation ?? 0,
                child: SvgPicture.asset(
                  path,
                  width: 28,
                  height: 28,
                ),
              ),
            ),
          ),
        ),
      ),
      trailingWidget: trailing.whenOrNull(
        customWidget: (widget) => widget,
        actionSvgPicture: (path, callback, key, rotation) => GestureDetector(
          key: key,
          onTap: callback,
          child: Container(
            color: Colors.transparent,
            width: 32,
            height: 32,
            child: Center(
              child: RotatedBox(
                quarterTurns: rotation ?? 0,
                child: SvgPicture.asset(
                  path,
                  width: 28,
                  height: 28,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  AppAppbar({
    super.key,
    this.titleWidget,
    this.leadingWidget,
    this.trailingWidget,
    this.bottom,
    this.decoration,
    this.toolbarHeight,
  }) : preferredSize =
            _PreferredAppBarSize(toolbarHeight, bottom?.preferredSize.height);
  final Widget? titleWidget;
  final Widget? leadingWidget;
  final Widget? trailingWidget;
  final PreferredSizeWidget? bottom;
  final double? toolbarHeight;
  @override
  final Size preferredSize;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        height: double.infinity,
        decoration: decoration ??
            const BoxDecoration(
              color: Colors.transparent,
            ),
        padding: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top,
          left: 16,
          right: 16,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (leadingWidget != null)
              Positioned(
                left: 0,
                child: leadingWidget!,
              ),
            if (titleWidget != null) Center(child: titleWidget),
            if (trailingWidget != null)
              Positioned(
                right: 0,
                child: trailingWidget!,
              ),
          ],
        ),
      ),
    );
  }

  static double preferredHeightFor(BuildContext context, Size preferredSize) {
    if (preferredSize is _PreferredAppBarSize &&
        preferredSize.toolbarHeight == null) {
      return (AppBarTheme.of(context).toolbarHeight ?? kToolbarHeight) +
          (preferredSize.bottomHeight ?? 0);
    }
    return preferredSize.height;
  }
}

class _PreferredAppBarSize extends Size {
  _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight)
      : super.fromHeight(
          (toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0),
        );

  final double? toolbarHeight;
  final double? bottomHeight;
}
