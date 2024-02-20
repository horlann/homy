part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.auth({required User auth, UserEntity? courier}) = _Auth;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.nonAuth() = _NonAuth;
}
