import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/core/routing/app_router.gr.dart';
import 'package:homyyy/features/auth/cubits/phone_input/phone_input_cubit.dart';
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

@RoutePage(name: 'PhoneInputScreenRoute')
class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({
    this.scenario = VerificationCodeScenario.login,
    super.key,
  });

  final VerificationCodeScenario scenario;

  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  final countryCode = '+380';

  late final TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: countryCode);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BaseBlocProvider<PhoneInputCubit, PhoneInputState>(
      create: (context) => di.get<PhoneInputCubit>(),
      child: BlocConsumer<PhoneInputCubit, PhoneInputState>(
        listener: (context, state) {
          state.mapOrNull(
            submit: (_) {
              context.pushRoute(
                VerificationCodeScreenRoute(codeScenario: widget.scenario),
              );
            },
          );
        },
        builder: (context, state) => Scaffold(
          backgroundColor: context.theme.appColors.beigeBizarre,
          // appBar: widget.scenario == VerificationCodeScenario.changeNumber
          //     ? AppDefaultAppbar(
          //         leading: AppbarActions.actionSvgPicture(
          //           AppAssets.icons.arrow.path,
          //           () {
          //             AutoRouter.of(context).popTop();
          //           },
          //         ),
          //         title: const AppbarTitle.none(),
          //         trailing: const AppbarActions.none(),
          //       )
          //     : null,
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
                              keyboardType: TextInputType.phone,
                              // inputFormatters: [state.inputFormatter],
                              // labelText: s.phoneNumber,
                              controller: textController,
                              textInputAction: TextInputAction.next,
                              onChanged: (text) {
                                final phone =
                                    text.replaceFirst(countryCode, '');
                                context
                                    .read<PhoneInputCubit>()
                                    .onFieldUpdate(phone);
                              },
                              //  hint: state.phonePlaceholder,
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
                        isActive: state.mapOrNull(
                              idle: (idle) {
                                return idle.numberValidated;
                              },
                            ) ??
                            false,
                        callback: () {
                          context
                              .read<PhoneInputCubit>()
                              .onSubmit(textController.value.text, '380');
                        },
                        text: LocaleKeys.auth_getSmsCode.tr(),
                      ),
                      SizedBox(height: screenHeight * p16),
                      Text(
                        LocaleKeys.auth_afterClickYouWillGetSms.tr(),
                        textAlign: TextAlign.center,
                      ),
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

  void showCountriesPicker(BuildContext context, Function onSelect) {
    // final s = S.of(context);
    // showCountryPicker(
    //   context: context,
    //   countryListTheme: CountryListThemeData(
    //     flagSize: 25,
    //     backgroundColor: Colors.white,
    //     textStyle: const TextStyle(fontSize: 16, color: Colors.blueGrey),
    //     bottomSheetHeight: 500,
    //     borderRadius: const BorderRadius.only(
    //       topLeft: Radius.circular(8.0),
    //       topRight: Radius.circular(8.0),
    //     ),
    //     inputDecoration: InputDecoration(
    //       labelText: s.search,
    //       prefixIcon: const Icon(Icons.search),
    //       border: OutlineInputBorder(
    //         borderSide: BorderSide(
    //           color: const Color(0xFF8C98A8).withOpacity(0.2),
    //         ),
    //       ),
    //     ),
    //   ),
    //   onSelect: (Country country) => onSelect(country),
    // );
  }
}
