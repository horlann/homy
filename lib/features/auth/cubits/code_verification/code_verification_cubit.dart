import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homyyy/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:homyyy/features/auth/data/repositories/user_auth_repository.dart';
import 'package:homyyy/features/user/user_repository.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:shared/enums/app_type.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/logger_service.dart';

part 'code_verification_cubit.freezed.dart';
part 'code_verification_state.dart';

class CodeVerificationCubit extends BaseCubit<CodeVerificationState> {
  CodeVerificationCubit(this._userRepository, this._couriersRepository)
      : super(const CodeVerificationState.initial());
  final UserAuthRepository _userRepository;
  final UserRepository _couriersRepository;

  Future<void> onFieldUpdate(String input) async {
    emit(CodeVerificationState.idle(validated: input.length == 6));
  }

  Future<void> onSubmit(String code) async {
    emit(const CodeVerificationState.loading());
    try {
      final authCredentials = await _userRepository.verifyCode(
        code,
        () {},
      );
      emit(CodeVerificationState.submit(authCredentials));
    } on IncorrectOTPException catch (e, s) {
      LoggerService().log(e.toString(), error: e, stackTrace: s);
      emit(
        CodeVerificationState.idle(
          validated: code.length == 6,
          errorText: 'Невірний код',
        ),
      );
    } on TooManyRequestsException catch (e, s) {
      LoggerService().log(e.toString(), error: e, stackTrace: s);
      emit(
        CodeVerificationState.idle(
          validated: code.length == 6,
          errorText: 'Забагато запитів',
        ),
      );
    } catch (e, s) {
      LoggerService().log(
        e.toString(),
        error: e,
        stackTrace: s,
        appType: AppType.courier,
        logLevel: LogLevel.error,
      );
      emit(
        CodeVerificationState.idle(
          validated: code.length == 6,
          errorText: 'Unknown Error',
        ),
      );
    }
  }

  Future<void> login(AuthCredential authCredentials) async {
    try {
      await _userRepository.signInByCredentials(authCredentials, () {});
    } on IncorrectOTPException catch (e) {
      emit(
        const CodeVerificationState.idle(
          validated: true,
          errorText: 'Incorrect code',
        ),
      );
    } on TooManyRequestsException catch (e) {
      emit(
        const CodeVerificationState.idle(
          validated: true,
          errorText: 'Too many requests',
        ),
      );
    } catch (e, s) {
      emit(
        const CodeVerificationState.idle(
          validated: true,
          errorText: 'Unknown error',
        ),
      );
    }
  }

  Future<void> changeNumber(PhoneAuthCredential authCredentials) async {
    emit(const CodeVerificationState.loading());
    try {
      final newUser = await _userRepository.updatePhoneNumber(authCredentials);
      await _couriersRepository
          .updatePhoneNumber(newUser?.phoneNumber ?? 'error');
      router.popUntilRoot();
    } on PhoneAlreadyExistsException catch (e, s) {
      emit(
        const CodeVerificationState.idle(
          validated: true,
          errorText: 'Телефон вже існує',
        ),
      );
    } catch (e, s) {
      LoggerService().log(
        'Code verification  error',
        error: e,
        stackTrace: s,
        appType: AppType.courier,
        logLevel: LogLevel.error,
      );
      emit(
        const CodeVerificationState.idle(
          validated: true,
          errorText: 'Unknown Error',
        ),
      );
    }
  }
}
