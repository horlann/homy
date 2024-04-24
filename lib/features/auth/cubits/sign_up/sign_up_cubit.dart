import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homyyy/features/auth/data/repositories/user_auth_repository.dart';
import 'package:homyyy/features/cdn/cdn_repository.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:homyyy/features/user/user_repository.dart';
import 'package:shared/api/user_types.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:shared/enums/app_type.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/logger_service.dart';
import 'package:uuid/uuid.dart';

part 'sign_up_cubit.freezed.dart';

part 'sign_up_state.dart';

class SignUpCubit extends BaseCubit<SignUpState> {
  SignUpCubit(this._authRepository, this._userRepository)
      : super(const SignUpState.initial());
  final UserAuthRepository _authRepository;
  final UserRepository _userRepository;

  Future<void> createAccount({
    required String email,
    required String password,
    required String name,
    File? photo,
  }) async {
    emit(const SignUpState.loading());
    try {
      final user = await _authRepository.createByEmailAndPassword(
          email, password, () {});
      await _userRepository.insertUser(UserEntity(
          id: user?.user?.uid ?? '',
          name: name,
          phone: '+380662853848',
          userType: UserType.user));
      emit(const SignUpState.success());
    } catch (e, s) {
      LoggerService().log(
        'Sign up error',
        error: e,
        stackTrace: s,
        appType: AppType.courier,
        logLevel: LogLevel.error,
      );
      emit(const SignUpState.error());
    }
  }
}
