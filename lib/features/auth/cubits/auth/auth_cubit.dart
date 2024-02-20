import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homyyy/features/auth/data/repositories/user_repository.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:homyyy/features/user/user_repository.dart';
import 'package:shared/base_cubit/base_cubit.dart';
import 'package:shared/enums/app_type.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/logger_service.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends BaseCubit<AuthState> {
  AuthCubit(this._userRepository, this._couriersRepository)
      : super(const AuthState.initial());
  final UserAuthRepository _userRepository;
  final UserRepository _couriersRepository;

  Future<void> initialize() async {
    emit(const AuthState.loading());
    try {
      _userRepository.authStateChanges().listen((event) async {
        if (event != null) {
          try {
            _couriersRepository
                .listenCourierCourierById(event.uid)
                .listen((courier) async {
              emit(
                AuthState.auth(
                  courier: courier,
                  auth: event,
                ),
              );
            }).onError((e) {
              emit(
                AuthState.auth(
                  auth: event,
                ),
              );
            });
          } catch (e) {
            emit(
              AuthState.auth(
                auth: event,
              ),
            );
          }
        } else {
          emit(const AuthState.nonAuth());
        }
      });
    } catch (e, s) {
      LoggerService().log(
        'Auth error',
        error: e,
        stackTrace: s,
        appType: AppType.courier,
        logLevel: LogLevel.error,
      );
      emit(const AuthState.nonAuth());
    }
  }

  Future<void> logout() async {
    await _userRepository.signOut();
  }
}
