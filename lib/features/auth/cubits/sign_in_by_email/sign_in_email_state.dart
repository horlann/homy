part of 'sign_in_email_cubit.dart';

@freezed
class SignInEmailState with _$SignInEmailState {
  const factory SignInEmailState.initial() = _Initial;

  const factory SignInEmailState.idle({
    @Default(true) bool validated,
    String? errorText,
  }) = _Idle;

  const factory SignInEmailState.loading() = _Loading;

  const factory SignInEmailState.submit() = _Submit;

  const factory SignInEmailState.error(String error) = _Error;
}
