import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homyyy/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:homyyy/features/auth/data/repositories/user_repository.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:shared/enums/app_type.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/logger_service.dart';

part 'phone_input_cubit.freezed.dart';
part 'phone_input_state.dart';

const _phoneNumberLength = 9;

class PhoneInputCubit extends BaseCubit<PhoneInputState> {
  PhoneInputCubit(this._userRepository)
      : super(const PhoneInputState.initial());
  final UserAuthRepository _userRepository;

  Future<void> onFieldUpdate(String input) async {
    emit(
      PhoneInputState.idle(
        numberValidated: input.length >= _phoneNumberLength,
      ),
    );
  }

  Future<void> onSubmit(String number, String countryCode) async {
    emit(const PhoneInputState.loading());
    try {
      await _userRepository.verifyPhone(number, () {
        emit(const PhoneInputState.submit());
      });
    } on InvalidNumberException catch (_) {
      emit(
        PhoneInputState.idle(
          numberValidated: number.length >= _phoneNumberLength,
          errorText: 'Невірний формат вводу',
        ),
      );
    } on PhoneAlreadyExistsException catch (_) {
      emit(
        PhoneInputState.idle(
          numberValidated: number.length >= _phoneNumberLength,
          errorText: 'Телефон вже існує',
        ),
      );
    } on TooManyRequestsException catch (_) {
      emit(
        PhoneInputState.idle(
          numberValidated: number.length >= _phoneNumberLength,
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
        PhoneInputState.idle(
          numberValidated: number.length >= _phoneNumberLength,
          errorText: 'Error ${e.message}',
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
        PhoneInputState.idle(
          numberValidated: number.length >= _phoneNumberLength,
          errorText: 'Error $e',
        ),
      );
    }
  }
}
