// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:homyyy/features/auth/ui/auth_wrapper.dart' as _i2;
import 'package:homyyy/features/auth/ui/phone_input_screen.dart' as _i10;
import 'package:homyyy/features/auth/ui/sign_in_by_email.dart' as _i12;
import 'package:homyyy/features/auth/ui/sign_up_screen.dart' as _i13;
import 'package:homyyy/features/auth/ui/verification_code_screen.dart' as _i16;
import 'package:homyyy/features/chat/chats_wrapper.dart' as _i4;
import 'package:homyyy/features/chat/simple_chat/simple_chat.dart' as _i14;
import 'package:homyyy/features/chat/ui/list_of_chats/chats_screen.dart' as _i3;
import 'package:homyyy/features/home/ui/home_screen.dart' as _i6;
import 'package:homyyy/features/osbb_details/admin_info_screen.dart' as _i1;
import 'package:homyyy/features/osbb_details/neighbours_screen.dart' as _i8;
import 'package:homyyy/features/osbb_details/osbb_details_screen.dart' as _i9;
import 'package:homyyy/features/profile/ui/profle_screen.dart' as _i11;
import 'package:homyyy/features/shared/presentation/global_wrapper.dart' as _i5;
import 'package:homyyy/features/shared/presentation/main_screen.dart' as _i7;
import 'package:homyyy/features/splash/presentation/page/splash_page.dart'
    as _i15;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    AdminInfoScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AdminInfoScreen(),
      );
    },
    AuthUpScreenWrapper.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthUpScreenWrapper(),
      );
    },
    ChatsScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ChatsScreen(),
      );
    },
    ChatsWrapperRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatsWrapper(),
      );
    },
    GlobalWrapperRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.GlobalWrapper(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    HomeWrapperRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeWrapper(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainScreen(),
      );
    },
    NeighboursScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NeighboursScreen(),
      );
    },
    OSBBInfoScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OSBBInfoScreen(),
      );
    },
    PhoneInputScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneInputScreenRouteArgs>(
          orElse: () => const PhoneInputScreenRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.PhoneInputScreen(
          scenario: args.scenario,
          key: args.key,
        ),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfileScreen(),
      );
    },
    SignInByEmailRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SignInByEmail(),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SignUpScreen(),
      );
    },
    SimpleChatScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SimpleChatScreenRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.SimpleChatScreen(
          key: args.key,
          chatId: args.chatId,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SplashScreen(),
      );
    },
    VerificationCodeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationCodeScreenRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.VerificationCodeScreen(
          args.codeScenario,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AdminInfoScreen]
class AdminInfoScreenRoute extends _i17.PageRouteInfo<void> {
  const AdminInfoScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          AdminInfoScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminInfoScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthUpScreenWrapper]
class AuthUpScreenWrapper extends _i17.PageRouteInfo<void> {
  const AuthUpScreenWrapper({List<_i17.PageRouteInfo>? children})
      : super(
          AuthUpScreenWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthUpScreenWrapper';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChatsScreen]
class ChatsScreenRoute extends _i17.PageRouteInfo<void> {
  const ChatsScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ChatsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatsWrapper]
class ChatsWrapperRoute extends _i17.PageRouteInfo<void> {
  const ChatsWrapperRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ChatsWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatsWrapperRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i5.GlobalWrapper]
class GlobalWrapperRoute extends _i17.PageRouteInfo<void> {
  const GlobalWrapperRoute({List<_i17.PageRouteInfo>? children})
      : super(
          GlobalWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'GlobalWrapperRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreenRoute extends _i17.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeWrapper]
class HomeWrapperRoute extends _i17.PageRouteInfo<void> {
  const HomeWrapperRoute({List<_i17.PageRouteInfo>? children})
      : super(
          HomeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeWrapperRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainScreen]
class MainScreenRoute extends _i17.PageRouteInfo<void> {
  const MainScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          MainScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NeighboursScreen]
class NeighboursScreenRoute extends _i17.PageRouteInfo<void> {
  const NeighboursScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          NeighboursScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NeighboursScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OSBBInfoScreen]
class OSBBInfoScreenRoute extends _i17.PageRouteInfo<void> {
  const OSBBInfoScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          OSBBInfoScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OSBBInfoScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PhoneInputScreen]
class PhoneInputScreenRoute
    extends _i17.PageRouteInfo<PhoneInputScreenRouteArgs> {
  PhoneInputScreenRoute({
    _i16.VerificationCodeScenario scenario =
        _i16.VerificationCodeScenario.login,
    _i18.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          PhoneInputScreenRoute.name,
          args: PhoneInputScreenRouteArgs(
            scenario: scenario,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PhoneInputScreenRoute';

  static const _i17.PageInfo<PhoneInputScreenRouteArgs> page =
      _i17.PageInfo<PhoneInputScreenRouteArgs>(name);
}

class PhoneInputScreenRouteArgs {
  const PhoneInputScreenRouteArgs({
    this.scenario = _i16.VerificationCodeScenario.login,
    this.key,
  });

  final _i16.VerificationCodeScenario scenario;

  final _i18.Key? key;

  @override
  String toString() {
    return 'PhoneInputScreenRouteArgs{scenario: $scenario, key: $key}';
  }
}

/// generated route for
/// [_i11.ProfileScreen]
class ProfileScreenRoute extends _i17.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SignInByEmail]
class SignInByEmailRoute extends _i17.PageRouteInfo<void> {
  const SignInByEmailRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SignInByEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInByEmailRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SignUpScreen]
class SignUpScreenRoute extends _i17.PageRouteInfo<void> {
  const SignUpScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SignUpScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SimpleChatScreen]
class SimpleChatScreenRoute
    extends _i17.PageRouteInfo<SimpleChatScreenRouteArgs> {
  SimpleChatScreenRoute({
    _i18.Key? key,
    required String chatId,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          SimpleChatScreenRoute.name,
          args: SimpleChatScreenRouteArgs(
            key: key,
            chatId: chatId,
          ),
          initialChildren: children,
        );

  static const String name = 'SimpleChatScreenRoute';

  static const _i17.PageInfo<SimpleChatScreenRouteArgs> page =
      _i17.PageInfo<SimpleChatScreenRouteArgs>(name);
}

class SimpleChatScreenRouteArgs {
  const SimpleChatScreenRouteArgs({
    this.key,
    required this.chatId,
  });

  final _i18.Key? key;

  final String chatId;

  @override
  String toString() {
    return 'SimpleChatScreenRouteArgs{key: $key, chatId: $chatId}';
  }
}

/// generated route for
/// [_i15.SplashScreen]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i16.VerificationCodeScreen]
class VerificationCodeScreenRoute
    extends _i17.PageRouteInfo<VerificationCodeScreenRouteArgs> {
  VerificationCodeScreenRoute({
    required _i16.VerificationCodeScenario codeScenario,
    _i18.Key? key,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          VerificationCodeScreenRoute.name,
          args: VerificationCodeScreenRouteArgs(
            codeScenario: codeScenario,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationCodeScreenRoute';

  static const _i17.PageInfo<VerificationCodeScreenRouteArgs> page =
      _i17.PageInfo<VerificationCodeScreenRouteArgs>(name);
}

class VerificationCodeScreenRouteArgs {
  const VerificationCodeScreenRouteArgs({
    required this.codeScenario,
    this.key,
  });

  final _i16.VerificationCodeScenario codeScenario;

  final _i18.Key? key;

  @override
  String toString() {
    return 'VerificationCodeScreenRouteArgs{codeScenario: $codeScenario, key: $key}';
  }
}
