import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homyyy/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:homyyy/features/auth/data/repositories/user_repository.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:shared/enums/app_type.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/logger_service.dart';

part 'sign_in_email_cubit.freezed.dart';
part 'sign_in_email_state.dart';

const _phoneNumberLength = 9;

class SignInEmailCubit extends BaseCubit<SignInEmailState> {
  SignInEmailCubit(this._userRepository)
      : super(const SignInEmailState.initial());
  final UserAuthRepository _userRepository;

  Future<void> onFieldUpdate(String input) async {
    emit(
      SignInEmailState.idle(
        validated: input.length >= _phoneNumberLength,
      ),
    );
  }

  Future<void> onSubmit(String email,String password) async {
    emit(const SignInEmailState.loading());
    try {
  
        await _userRepository.verifyEmailAndPassword('tortos121@gmail.com','12345678', () {
       emit(const SignInEmailState.submit());
     });
            emit(const SignInEmailState.submit());

    } on InvalidNumberException catch (_) {
      emit(
        SignInEmailState.idle(
          validated: true,
          errorText: 'Невірний формат вводу',
        ),
      );
    } on PhoneAlreadyExistsException catch (_) {
      emit(
        SignInEmailState.idle(
          validated: true,
          errorText: 'Телефон вже існує',
        ),
      );
    } on TooManyRequestsException catch (_) {
      emit(
        SignInEmailState.idle(
          validated: true,
          errorText: 'Забагато запитів.Спробуйте пізніше',
        ),
      );
    } on UnknownException catch (e, s) {
      LoggerService().log(
        'Phone input error',
        error: e,
        stackTrace: s,
        appType: AppType.courier,
        logLevel: LogLevel.error,
      );
      emit(
        SignInEmailState.idle(
          validated: true,
          errorText: 'Помилка ${e.message}',
        ),
      );
    } catch (e, s) {
      LoggerService().log(
        'Phone input error',
        error: e,
        stackTrace: s,
        appType: AppType.courier,
        logLevel: LogLevel.error,
      );
      emit(
        SignInEmailState.idle(
          validated: true,
          errorText: 'Error $e',
        ),
      );
    }
  }
}
