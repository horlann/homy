part of 'osbb_cubit.dart';

@freezed
class OsbbState with _$OsbbState {
  const factory OsbbState.initial() = _Initial;

  const factory OsbbState.idle({
  required  OSBBModel osbb,
  }) = _Idle;

  const factory OsbbState.loading() = _Loading;


  const factory OsbbState.error(String error) = _Error;
}
