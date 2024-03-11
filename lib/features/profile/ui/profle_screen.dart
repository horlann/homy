import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/core/routing/app_router.gr.dart';
import 'package:homyyy/features/auth/cubits/auth/auth_cubit.dart';
import 'package:homyyy/features/auth/data/repositories/user_repository.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Center(
            child: RoundedButton(
                callback: () {
                  context.read<AuthCubit>().logout();
                },
                text: "Вийти"),
          )
        ]),
      ),
    );
  }
}
