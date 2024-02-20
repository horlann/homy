part of 'code_verification_cubit.dart';

@freezed
class CodeVerificationState with _$CodeVerificationState {
  const factory CodeVerificationState.initial() = _Initial;

  const factory CodeVerificationState.idle({
    @Default(false) bool validated,
    String? errorText,
  }) = _Idle;

  const factory CodeVerificationState.loading() = _Loading;

  const factory CodeVerificationState.submit(PhoneAuthCredential credential) =
      _Submit;

  const factory CodeVerificationState.error(String error) = _Error;
}
