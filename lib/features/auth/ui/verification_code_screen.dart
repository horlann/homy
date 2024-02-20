import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/features/auth/cubits/code_verification/code_verification_cubit.dart';
import 'package:homyyy/gen/localization/locale_keys.g.dart';
import 'package:homyyy/main/di.dart';
import 'package:pinput/pinput.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:uikit/uikit.dart';

@RoutePage(name: 'VerificationCodeScreenRoute')
class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen(this.codeScenario, {super.key});

  final VerificationCodeScenario codeScenario;

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: textTheme.bodyMedium,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyBorderWith(
      border: Border.all(color: colorScheme.error),
    );
    return BaseBlocProvider<CodeVerificationCubit, CodeVerificationState>(
      create: (context) => di.get<CodeVerificationCubit>(),
      child: Scaffold(
        backgroundColor: context.theme.appColors.beigeBizarre,
        // appBar: AppDefaultAppbar(
        //   leading: AppbarActions.actionSvgPicture(
        //     AppAssets.icons.arrow.path,
        //     () {
        //       AutoRouter.of(context).popTop();
        //     },
        //   ),
        //   title: const AppbarTitle.none(),
        //   trailing: const AppbarActions.none(),
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: BlocConsumer<CodeVerificationCubit, CodeVerificationState>(
              listener: (context, state) {
                state.mapOrNull(
                  submit: (authCredentials) async {
                    final cubit = context.read<CodeVerificationCubit>();
                    switch (widget.codeScenario) {
                      case VerificationCodeScenario.login:
                        await cubit.login(authCredentials.credential);
                      case VerificationCodeScenario.changeNumber:
                        await cubit.changeNumber(authCredentials.credential);
                    }
                  },
                );
              },
              builder: (context, state) => Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 51),
                      Text(
                        LocaleKeys.auth_codeFromSms.tr(),
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      Pinput(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        autofocus: true,
                        defaultPinTheme: defaultPinTheme,
                        errorPinTheme: errorPinTheme,
                        length: 6,
                        controller: textController,
                        cursor: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              width: 22,
                              height: 1,
                              color: theme.primaryColor,
                            ),
                          ],
                        ),
                        onTap: () {
                          // if (state.errorText != null) {
                          //   controller.clearErrorText();
                          // }
                        },
                        pinAnimationType: PinAnimationType.none,
                        pinputAutovalidateMode: PinputAutovalidateMode.disabled,
                        onChanged: (c) {
                          context
                              .read<CodeVerificationCubit>()
                              .onFieldUpdate(c);
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.mapOrNull(
                              idle: (idle) {
                                return idle.errorText ?? '';
                              },
                            ) ??
                            '',
                      ),
                      const Spacer(),
                      RoundedButton(
                        isActive: state.mapOrNull(
                              idle: (idle) {
                                return idle.validated;
                              },
                            ) ??
                            false,
                        callback: () {
                          context.read<CodeVerificationCubit>().onSubmit(
                                textController.value.text,
                              );
                        },
                        text: LocaleKeys.auth_continue.tr(),
                      ),
                      const SizedBox(height: 16),
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

enum VerificationCodeScenario {
  login,
  changeNumber,
}
