import 'dart:async';

import 'package:chat/cubit/models/chat_message.dart';
import 'package:chat/data/chat_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/api/firebase_auth_api.dart';
import 'package:shared/api/models/abstract_user.dart';
import 'package:shared/exceptions/exceptions.dart';
import 'package:shared/logger/logger_service.dart';
import 'package:uuid/uuid.dart';

part 'chat_cubit.freezed.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<PersonalChatState> {
  ChatCubit({
    required FirebaseAuthApi authApi,
    required ChatRepository chatRepository,
  })  : _authApi = authApi,
        _chatRepository = chatRepository,
        super(const PersonalChatState.initial());

  final ChatRepository _chatRepository;
  final FirebaseAuthApi _authApi;

  String? get _userId => _authApi.user?.uid;
  StreamSubscription? _subscription;

  Future<void> initialize(String deliveryId) async {
    emit(const PersonalChatState.loading());
    _subscription = _chatRepository.chatStream(deliveryId).listen((event) {
      emit(PersonalChatState.idle(
          userId: _userId!,
          messages: event.reversed.toList(),
          deliveryId: deliveryId));
    })
      ..onError((e, s) {
        if (e is NoDataInDatabaseError) {
          emit(PersonalChatState.idle(
              userId: _userId!, messages: [], deliveryId: deliveryId));
        }
        LoggerService().log('$e $s', error: e, stackTrace: s);
      });
  }

  Future<void> pushMessage(String text) async {
    final idleState = state.mapOrNull(idle: (data) => data);
    if (idleState == null) {
      return;
    }
    if (idleState.messages.length > 100) {
      return;
    }
    final messages = [...idleState.messages];
    final ChatMessage msg = ChatMessage(
        id: const Uuid().v4(),
        text: text,
        messageType:'text',
        createdAt: DateTime.now(),
        status: 'delivered',
        sender: AbstractUser(id: _userId!));
   messages.insert(0, msg);

   await _chatRepository.pushMessage(idleState.deliveryId, msg);
  }

  Future<void> seeMessage(String messageId) async {
    final idleState = state.mapOrNull(idle: (data) => data);
    if (idleState == null) {
      return;
    }
    await _chatRepository.seeMessage(messageId, idleState.deliveryId);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
