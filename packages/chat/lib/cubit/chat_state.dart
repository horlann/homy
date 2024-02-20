part of 'chat_cubit.dart';

@freezed
class PersonalChatState with _$PersonalChatState {
  const factory PersonalChatState.initial() = _Initial;

  const factory PersonalChatState.loading() = _Loading;

  const factory PersonalChatState.idle({
    required List<ChatMessage> messages,
    required String userId,
    required String deliveryId,
  }) = _Idle;

  const factory PersonalChatState.error(String error) = _Error;
}
