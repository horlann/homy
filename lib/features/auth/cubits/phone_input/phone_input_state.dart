part of 'phone_input_cubit.dart';

@freezed
class PhoneInputState with _$PhoneInputState {
  const factory PhoneInputState.initial() = _Initial;

  const factory PhoneInputState.idle({
    @Default(false) bool numberValidated,
    String? errorText,
  }) = _Idle;

  const factory PhoneInputState.loading() = _Loading;

  const factory PhoneInputState.submit() = _Submit;

  const factory PhoneInputState.error(String error) = _Error;
}
