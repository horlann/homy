// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:homyyy/features/auth/ui/auth_wrapper.dart' as _i1;
import 'package:homyyy/features/auth/ui/phone_input_screen.dart' as _i3;
import 'package:homyyy/features/auth/ui/sign_up_screen.dart' as _i4;
import 'package:homyyy/features/auth/ui/verification_code_screen.dart' as _i6;
import 'package:homyyy/features/shared/presentation/global_wrapper.dart' as _i2;
import 'package:homyyy/features/splash/presentation/page/splash_page.dart'
    as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthUpScreenWrapper.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthUpScreenWrapper(),
      );
    },
    GlobalWrapperRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GlobalWrapper(),
      );
    },
    PhoneInputScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneInputScreenRouteArgs>(
          orElse: () => const PhoneInputScreenRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.PhoneInputScreen(
          scenario: args.scenario,
          key: args.key,
        ),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashScreen(),
      );
    },
    VerificationCodeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationCodeScreenRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.VerificationCodeScreen(
          args.codeScenario,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthUpScreenWrapper]
class AuthUpScreenWrapper extends _i7.PageRouteInfo<void> {
  const AuthUpScreenWrapper({List<_i7.PageRouteInfo>? children})
      : super(
          AuthUpScreenWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthUpScreenWrapper';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GlobalWrapper]
class GlobalWrapperRoute extends _i7.PageRouteInfo<void> {
  const GlobalWrapperRoute({List<_i7.PageRouteInfo>? children})
      : super(
          GlobalWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'GlobalWrapperRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PhoneInputScreen]
class PhoneInputScreenRoute
    extends _i7.PageRouteInfo<PhoneInputScreenRouteArgs> {
  PhoneInputScreenRoute({
    _i6.VerificationCodeScenario scenario = _i6.VerificationCodeScenario.login,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          PhoneInputScreenRoute.name,
          args: PhoneInputScreenRouteArgs(
            scenario: scenario,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PhoneInputScreenRoute';

  static const _i7.PageInfo<PhoneInputScreenRouteArgs> page =
      _i7.PageInfo<PhoneInputScreenRouteArgs>(name);
}

class PhoneInputScreenRouteArgs {
  const PhoneInputScreenRouteArgs({
    this.scenario = _i6.VerificationCodeScenario.login,
    this.key,
  });

  final _i6.VerificationCodeScenario scenario;

  final _i8.Key? key;

  @override
  String toString() {
    return 'PhoneInputScreenRouteArgs{scenario: $scenario, key: $key}';
  }
}

/// generated route for
/// [_i4.SignUpScreen]
class SignUpScreenRoute extends _i7.PageRouteInfo<void> {
  const SignUpScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SignUpScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.VerificationCodeScreen]
class VerificationCodeScreenRoute
    extends _i7.PageRouteInfo<VerificationCodeScreenRouteArgs> {
  VerificationCodeScreenRoute({
    required _i6.VerificationCodeScenario codeScenario,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          VerificationCodeScreenRoute.name,
          args: VerificationCodeScreenRouteArgs(
            codeScenario: codeScenario,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationCodeScreenRoute';

  static const _i7.PageInfo<VerificationCodeScreenRouteArgs> page =
      _i7.PageInfo<VerificationCodeScreenRouteArgs>(name);
}

class VerificationCodeScreenRouteArgs {
  const VerificationCodeScreenRouteArgs({
    required this.codeScenario,
    this.key,
  });

  final _i6.VerificationCodeScenario codeScenario;

  final _i8.Key? key;

  @override
  String toString() {
    return 'VerificationCodeScreenRouteArgs{codeScenario: $codeScenario, key: $key}';
  }
}
