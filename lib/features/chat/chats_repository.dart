import 'package:chat/data/chat_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homyyy/features/chat/ui/list_of_chats/cubit/chats_cubit.dart';
import 'package:homyyy/features/user/user_repository.dart';
import 'package:homyyy/main/di.dart';

abstract class ChatsRepository {
  ///fetch user chats  by userId
  Future<List<ChatEntity>> userChats(
    String id,
  );

}

class ChatsRepositoryImpl implements ChatsRepository {
  ChatsRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;
  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection('chats');

  @override
  Future<List<ChatEntity>> userChats(
    String id,
  ) async {
     try {
      return _collection
          .where('users',arrayContains: id)
          .get()
          .then((snapshot) async {
        if (snapshot.docs.isNotEmpty) {
          try {
            final chats=<ChatEntity>[];
            for(final doc in  snapshot.docs){
               final chatInfo=UserChatInfo.fromJson(doc.data());
            final user=await di.get<UserRepository>().getUserById(chatInfo.recipient);
            final messages=await di.get<ChatRepository>().chatStream(chatInfo.chatId).first;
            chats.add(ChatEntity(messages,chatId: chatInfo.chatId,recipient: user));
            }
         return chats;
          } catch (e, s) {
            Error.throwWithStackTrace(
              Exception('User chat info serialization error'),
              s,
            );
          }
        } else {
          throw Exception();
        }
      });
    } catch (e) {
      rethrow;
    }
  }


}
