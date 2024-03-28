import 'dart:ui';

import 'package:chat/cubit/models/chat_message.dart';
import 'package:chat/data/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homyyy/features/chat/chats_repository.dart';
import 'package:homyyy/features/osbb/data/models/osbb_model.dart';
import 'package:homyyy/features/osbb/data/osbb_repository.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/api/firebase_auth_api.dart';

import 'package:shared/base_cubit/base_cubit.dart';

part 'chats_cubit.freezed.dart';
part 'chats_state.dart';

class UserChatsCubit extends BaseCubit<ChatsState> {
  UserChatsCubit(this._chatsRepository, this._chatRepository) : super(const ChatsState.initial());
  final ChatsRepository _chatsRepository;
  final ChatRepository _chatRepository;

  Future<void> init() async {
    try {
      emit(ChatsState.loading());
      final chats = await _chatsRepository.userChats(di.get<FirebaseAuthApi>().user?.uid??'');
      emit(ChatsState.idle(chats: chats));
    } catch (e, s) {
      print(e);
      print(s);
      emit(ChatsState.error('error'));
    }
  }

  Future<void> createChat(Function(String) callback,String userId) async {
    final chat=await _chatRepository.createChat(di.get<FirebaseAuthApi>().user?.uid??'',userId);
    callback.call(chat);
  }
}

class UserChatInfo {
  final String recipient;
  final String chatId;

   UserChatInfo({required this.recipient, required this.chatId});

   factory UserChatInfo.fromJson(Map<String,dynamic> json){
    return UserChatInfo(chatId: json['id'],recipient:json['users'][1]);
   }
}
class ChatEntity {
  final UserEntity recipient;
  final String chatId;
  final List<ChatMessage> messages;

   ChatEntity(this.messages, {required this.recipient, required this.chatId});
}