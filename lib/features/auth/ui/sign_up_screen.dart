import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/features/auth/cubits/auth/auth_cubit.dart';
import 'package:homyyy/features/auth/cubits/sign_up/sign_up_cubit.dart';
import 'package:homyyy/gen/localization/locale_keys.g.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:uikit/uikit.dart';

@RoutePage(name: 'SignUpScreenRoute')
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController _nameController;
    late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  String? photoPath;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
        _emailController = TextEditingController();

    _passwordController = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocProvider<SignUpCubit, SignUpState>(
      create: (context) => di.get<SignUpCubit>(),
      child: Scaffold(
        backgroundColor: context.theme.appColors.beigeBizarre,
        body: BlocBuilder<SignUpCubit, SignUpState>(
          builder: (context, state) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  // ImagePickerWidget(
                  //   onImagePicked: (callback) {
                  //     photoPath = callback;
                  //   },
                  // ),
                  const Spacer(),
                  CustomInputField(
                    keyboardType: TextInputType.text,
                    controller: _nameController,
                    labelText: LocaleKeys.auth_name.tr(),
                    hint: LocaleKeys.auth_name.tr(),
                    isActive: false,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: (text) async {},
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                   CustomInputField(
                    keyboardType: TextInputType.text,
                    controller: _emailController,
                    labelText: LocaleKeys.auth_name.tr(),
                    hint: LocaleKeys.auth_name.tr(),
                    isActive: false,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: (text) async {},
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                   CustomInputField(
                    keyboardType: TextInputType.text,
                    controller: _passwordController,
                    labelText: LocaleKeys.auth_name.tr(),
                    hint: LocaleKeys.auth_name.tr(),
                    isActive: false,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: (text) async {},
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Spacer(),
                  RoundedButton(
                    callback: () {
                      final user = context.read<AuthCubit>().state.mapOrNull(
                        auth: (auth) {
                          return auth.auth;
                        },
                      );
                      if (user != null && _emailController.value.text.isNotEmpty) {
                        context.read<SignUpCubit>().createAccount(
                                                        email: _emailController.text,

                              password: _passwordController.text, name: _nameController.text,
                            );
                      }
                    },
                    text: LocaleKeys.auth_signUp.tr(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
