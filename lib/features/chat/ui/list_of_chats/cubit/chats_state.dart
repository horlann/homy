part of 'chats_cubit.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState.initial() = _Initial;

  const factory ChatsState.idle({
  required  List<ChatEntity> chats,
  }) = _Idle;

  const factory ChatsState.loading() = _Loading;


  const factory ChatsState.error(String error) = _Error;
}
