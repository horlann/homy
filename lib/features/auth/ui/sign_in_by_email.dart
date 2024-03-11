import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/core/routing/app_router.gr.dart';
import 'package:homyyy/features/auth/cubits/phone_input/phone_input_cubit.dart';
import 'package:homyyy/features/auth/cubits/sign_in_by_email/sign_in_email_cubit.dart';
import 'package:homyyy/features/auth/ui/verification_code_screen.dart';
import 'package:homyyy/gen/localization/locale_keys.g.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:uikit/uikit.dart';

const p56 = 0.069;
const p23 = 0.028;
const p20 = 0.025;
const p16 = 0.0197;
const p12 = 0.0148;
@RoutePage()
class SignInByEmail extends StatefulWidget {
  const SignInByEmail({super.key});


  @override
  State<SignInByEmail> createState() => _SignInByEmailState();
}

class _SignInByEmailState extends State<SignInByEmail> {

  late final TextEditingController emailController;
    late final TextEditingController passwordController;


  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
        passwordController = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BaseBlocProvider<SignInEmailCubit, SignInEmailState>(
      create: (context) => di.get<SignInEmailCubit>(),
      child: BlocConsumer<SignInEmailCubit, SignInEmailState>(
        listener: (context, state) {
          state.mapOrNull(
            submit: (_) {
              context.pushRoute(MainScreenRoute()              );
            },
          );
        },
        builder: (context, state) => Scaffold(
          backgroundColor: context.theme.appColors.beigeBizarre,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Text(
                        LocaleKeys.auth_phoneNumber.tr(),
                      ),
                      SizedBox(height: screenHeight * p16),
                      Text(
                        LocaleKeys.auth_selectYourCountryAndPhone.tr(),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * p16),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 8),
                          Flexible(
                            child: CustomInputField(
                              autofocus: true,
                              controller: emailController,
                              textInputAction: TextInputAction.next,
                              onChanged: (text) {
                                context
                                    .read<SignInEmailCubit>()
                                    .onFieldUpdate(emailController.text);
                              },
                                hint: 'email',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 8),
                          Flexible(
                            child: CustomInputField(
                              autofocus: true,
                              controller: passwordController,
                              textInputAction: TextInputAction.next,
                              onChanged: (text) {
                                context
                                    .read<SignInEmailCubit>()
                                    .onFieldUpdate(emailController.text);
                              },
                                hint: 'passsword',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        state.mapOrNull(
                              idle: (idle) => idle.errorText ?? '',
                            ) ??
                            '',
                      ),
                      const Spacer(),
                      RoundedButton(
                        // isActive: state.mapOrNull(
                        //       idle: (idle) {
                        //         return idle.validated;
                        //       },
                        //     ) ??
                        //     false,
                        callback: () {
                          context
                              .read<SignInEmailCubit>()
                              .onSubmit(emailController.text,passwordController.text);
                        },
                        text: 'login',
                      ),
                      SizedBox(height: screenHeight * p16),
                       RoundedButton(
                        // isActive: state.mapOrNull(
                        //       idle: (idle) {
                        //         return idle.validated;
                        //       },
                        //     ) ??
                        //     false,
                        callback: () {
                          context
                              .pushRoute(SignUpScreenRoute());
                        },
                        text: 'sign up',
                      ),
                      SizedBox(height: screenHeight * p16),
                     
                    ],
                  ),
                  state.whenOrNull(loading: () => true) ?? (false)
                      ? const AppLoadingIndicator()
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
