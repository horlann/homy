import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/i_logger_service.dart';

class MainNavigationObserver extends AutoRouterObserver {
  MainNavigationObserver(this.loggerService);

  final ILoggerService loggerService;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final navigator = route.navigator;

    final routerDelegate =
        navigator == null ? null : AutoRouterDelegate.of(navigator.context);
    loggerService.log(
      'New route pushed: ${route.settings.name} '
      '\npath is:${routerDelegate?.urlState.url ?? ''}',
      logAction: LogAction.navigation,
      sendToRemote: false,
      sendToMessenger: false,
    );
    super.didPush(route, previousRoute);
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    loggerService.log(
      'Tab route visited: ${route.name} \npath is:${route.routeInfo.path}',
      logAction: LogAction.navigation,
      sendToRemote: false,
      sendToMessenger: false,
    );
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    loggerService.log(
      'Tab route re-visited: ${route.name} \npath is:${route.routeInfo.path}',
      logAction: LogAction.navigation,
      sendToRemote: false,
      sendToMessenger: false,
    );
    super.didChangeTabRoute(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (newRoute != null) {
      final navigator = newRoute.navigator;
      final routerDelegate =
          navigator == null ? null : AutoRouterDelegate.of(navigator.context);
      loggerService.log(
        'New route replaced: ${newRoute.settings.name} '
        '\npath is:${routerDelegate?.urlState.url ?? ''}',
        logAction: LogAction.navigation,
        sendToRemote: false,
        sendToMessenger: false,
      );
    } else {
      loggerService.log(
        'Empty route',
        logAction: LogAction.navigation,
        logLevel: LogLevel.warning,
        sendToRemote: false,
        sendToMessenger: false,
      );
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final navigator = route.navigator;

    final routerDelegate =
        navigator == null ? null : AutoRouterDelegate.of(navigator.context);
    loggerService.log(
      'Routed popped: current is:${route.settings.name}'
      ' \nprevious is: \npath is:${previousRoute?.settings.name ?? 'error'}'
      '   ${routerDelegate?.urlState.url ?? ''}',
      logAction: LogAction.navigation,
      sendToRemote: false,
      sendToMessenger: false,
    );
    super.didPop(route, previousRoute);
  }
}
