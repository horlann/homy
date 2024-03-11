import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/core/routing/app_router.gr.dart';
import 'package:homyyy/features/auth/cubits/auth/auth_cubit.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:homyyy/gen/localization/locale_keys.g.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/base_cubit/base_cubit.dart';

@RoutePage(name: 'GlobalWrapperRoute')
class GlobalWrapper extends StatefulWidget {
  const GlobalWrapper({super.key});

  @override
  State<GlobalWrapper> createState() => _GlobalWrapperState();
}

class _GlobalWrapperState extends State<GlobalWrapper> {
  bool isNavigated = false;

  @override
  Widget build(BuildContext context) {
    return  BaseBlocProvider<AuthCubit, AuthState>(
        create: (context) => di.get<AuthCubit>()..initialize(),
        child: BlocConsumer<AuthCubit, AuthState>(
          listenWhen: (previousState, state) {
            var type1 = '';
            var type2 = '';
            UserEntity? c1;
            UserEntity? c2;
            previousState.whenOrNull(
              auth: (_, user) {
                type1 = LocaleKeys.shared_auth.tr();
                c1 = user;
              },
              nonAuth: () {
                type1 = LocaleKeys.shared_nonAuth.tr();
              },
            );
            state.whenOrNull(
              auth: (_, user) {
                type2 = LocaleKeys.shared_auth.tr();
                c2 = user;
              },
              nonAuth: () {
                type2 = LocaleKeys.shared_nonAuth.tr();
              },
            );
            return type1 != type2 || (c1 == null && c2 != null);
          },
          listener: (context, state) {
            state.mapOrNull(
              auth: (auth) {
                if (auth.courier != null) {
                  context.router.replaceAll([const MainScreenRoute()]);
                } else {
                  context.pushRoute(const SignInByEmailRoute());
                }
                isNavigated = true;
              },
              nonAuth: (nonAuth) {
                Future.delayed(const Duration(seconds: 1)).then((value) {
                  isNavigated = false;
                  context.pushRoute(
                    SignInByEmailRoute(),
                  );
                });
              },
            );
          },
          builder: (context, state) {
            return AutoRouter(
              placeholder: (context) => const Scaffold(
                resizeToAvoidBottomInset: false,
                body: Center(
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
    );
  }
}
