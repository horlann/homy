// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:homyyy/features/auth/ui/auth_wrapper.dart' as _i1;
import 'package:homyyy/features/auth/ui/phone_input_screen.dart' as _i6;
import 'package:homyyy/features/auth/ui/sign_in_by_email.dart' as _i8;
import 'package:homyyy/features/auth/ui/sign_up_screen.dart' as _i9;
import 'package:homyyy/features/auth/ui/verification_code_screen.dart' as _i11;
import 'package:homyyy/features/chat/ui/chat_screen.dart' as _i2;
import 'package:homyyy/features/home/ui/home_screen.dart' as _i4;
import 'package:homyyy/features/profile/ui/profle_screen.dart' as _i7;
import 'package:homyyy/features/shared/presentation/global_wrapper.dart' as _i3;
import 'package:homyyy/features/shared/presentation/main_screen.dart' as _i5;
import 'package:homyyy/features/splash/presentation/page/splash_page.dart'
    as _i10;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AuthUpScreenWrapper.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthUpScreenWrapper(),
      );
    },
    ChatScreenRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatScreen(),
      );
    },
    GlobalWrapperRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.GlobalWrapper(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    PhoneInputScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneInputScreenRouteArgs>(
          orElse: () => const PhoneInputScreenRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PhoneInputScreen(
          scenario: args.scenario,
          key: args.key,
        ),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
    SignInByEmailRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignInByEmail(),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashScreen(),
      );
    },
    VerificationCodeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationCodeScreenRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.VerificationCodeScreen(
          args.codeScenario,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthUpScreenWrapper]
class AuthUpScreenWrapper extends _i12.PageRouteInfo<void> {
  const AuthUpScreenWrapper({List<_i12.PageRouteInfo>? children})
      : super(
          AuthUpScreenWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthUpScreenWrapper';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatScreen]
class ChatScreenRoute extends _i12.PageRouteInfo<void> {
  const ChatScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ChatScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatScreenRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GlobalWrapper]
class GlobalWrapperRoute extends _i12.PageRouteInfo<void> {
  const GlobalWrapperRoute({List<_i12.PageRouteInfo>? children})
      : super(
          GlobalWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'GlobalWrapperRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreenRoute extends _i12.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainScreen]
class MainScreenRoute extends _i12.PageRouteInfo<void> {
  const MainScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainScreenRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PhoneInputScreen]
class PhoneInputScreenRoute
    extends _i12.PageRouteInfo<PhoneInputScreenRouteArgs> {
  PhoneInputScreenRoute({
    _i11.VerificationCodeScenario scenario =
        _i11.VerificationCodeScenario.login,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          PhoneInputScreenRoute.name,
          args: PhoneInputScreenRouteArgs(
            scenario: scenario,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PhoneInputScreenRoute';

  static const _i12.PageInfo<PhoneInputScreenRouteArgs> page =
      _i12.PageInfo<PhoneInputScreenRouteArgs>(name);
}

class PhoneInputScreenRouteArgs {
  const PhoneInputScreenRouteArgs({
    this.scenario = _i11.VerificationCodeScenario.login,
    this.key,
  });

  final _i11.VerificationCodeScenario scenario;

  final _i13.Key? key;

  @override
  String toString() {
    return 'PhoneInputScreenRouteArgs{scenario: $scenario, key: $key}';
  }
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileScreenRoute extends _i12.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignInByEmail]
class SignInByEmailRoute extends _i12.PageRouteInfo<void> {
  const SignInByEmailRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignInByEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInByEmailRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignUpScreen]
class SignUpScreenRoute extends _i12.PageRouteInfo<void> {
  const SignUpScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignUpScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpScreenRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.VerificationCodeScreen]
class VerificationCodeScreenRoute
    extends _i12.PageRouteInfo<VerificationCodeScreenRouteArgs> {
  VerificationCodeScreenRoute({
    required _i11.VerificationCodeScenario codeScenario,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          VerificationCodeScreenRoute.name,
          args: VerificationCodeScreenRouteArgs(
            codeScenario: codeScenario,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationCodeScreenRoute';

  static const _i12.PageInfo<VerificationCodeScreenRouteArgs> page =
      _i12.PageInfo<VerificationCodeScreenRouteArgs>(name);
}

class VerificationCodeScreenRouteArgs {
  const VerificationCodeScreenRouteArgs({
    required this.codeScenario,
    this.key,
  });

  final _i11.VerificationCodeScenario codeScenario;

  final _i13.Key? key;

  @override
  String toString() {
    return 'VerificationCodeScreenRouteArgs{codeScenario: $codeScenario, key: $key}';
  }
}
