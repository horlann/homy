import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homyyy/features/cdn/cdn_repository.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:homyyy/features/user/user_repository.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:shared/enums/app_type.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/logger_service.dart';
import 'package:uuid/uuid.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends BaseCubit<SignUpState> {
  SignUpCubit(this._couriersRepository, this._cdnStorageRepository)
      : super(const SignUpState.initial());
  final UserRepository _couriersRepository;
  final CDNStorageRepository _cdnStorageRepository;

  Future<void> createAccount({
    required User user,
    required String name,
    File? photo,
  }) async {
    emit(const SignUpState.loading());
    try {
      await _couriersRepository.insertCourier(
        UserEntity(
          id: user.uid,
          name: name,
          phone: user.phoneNumber ?? '',
        ),
      );
      if (photo != null) {
        await putImage(photo, user.uid);
      }
      //  emit(const SignUpState.success());
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

  Future<void> putImage(File file, String uid) async {
    try {
      final imagePath = 'couriers/photos/$uid/${const Uuid().v4()}';
      await _cdnStorageRepository.put(file, imagePath);
      final downloadPath = await _cdnStorageRepository.getPath(imagePath);
      await _couriersRepository.updatePhoto(downloadPath);
    } catch (e) {
      //todo
    }
  }
}
