import 'package:chat/cubit/models/chat_message.dart';
import 'package:chat/data/chat_message_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared/exceptions/exceptions.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/logger_service.dart';
import 'package:uuid/uuid.dart';

abstract class ChatRepository {
  Stream<List<ChatMessage>> chatStream(String id);

  Future<void> pushMessage(String id, ChatMessage message);

  Future<void> seeMessage(String messageId, String id);
    Future<String> createChat( String id,String id2);
    

}

class ChatRepositoryImpl extends ChatRepository {
  final FirebaseFirestore _firestore;

  static const _sessionCollection = 'chats';

  ChatRepositoryImpl({required FirebaseFirestore firestore})
      : _firestore = firestore;

  @override
  Stream<List<ChatMessage>> chatStream(String id) {
    return _firestore
        .collection(_sessionCollection)
        .doc(id)
        .collection('messages')
        .orderBy('created_at', descending: false)
        .snapshots()
        .asyncMap(
      (snapshot) async {
        if (snapshot.docs.isNotEmpty) {
          try {
            final list = snapshot.docs
                .map((e) {
                  try {
                    final dto = ChatMessageDTO.fromJson(e.data());
                    return dto;
                  } catch (e) {
                    return null;
                  }
                })
                .where((element) => element != null)
                .map((e) => ChatMessage.fromDTO(e!))
                .toList();
            list.sort((a, b) => a.createdAt.compareTo(b.createdAt));
            return list;
          } catch (e, s) {
            LoggerService().log(
              'Order serialization error',
              error: e,
              stackTrace: s,
              logLevel: LogLevel.error,
            );
            Error.throwWithStackTrace(
              SerializationError(
                message: e.toString(),
              ),
              s,
            );
          }
        }
        throw NoDataInDatabaseError(message: 'No snapshot by request $id');
      },
    );
  }

  @override
  Future<void> pushMessage(String id, ChatMessage message) async {
    await _firestore
        .collection(_sessionCollection)
        .doc(id)
        .collection('messages')
        .doc(message.id)
        .set(message.toDTO().toJson());
  }
   @override
  Future<String> createChat(String id,String id2) async {
    final uid=Uuid().v4();
    await _firestore
        .collection(_sessionCollection)
        .doc(uid)
        .set({
          'id':uid,
          'users':[id,id2],
          'created_at':DateTime.now()
        });
        return uid;
  }

  @override
  Future<void> seeMessage(String messageId, String id) async {
    final collection = _firestore
        .collection(_sessionCollection)
        .doc(id)
        .collection('messages');
    final doc = await collection.doc(messageId).get();
    if (doc.data()?.isNotEmpty ?? false) {
      final messageDto = ChatMessageDTO.fromJson(doc.data() ?? {});
      final message = ChatMessage.fromDTO(messageDto);
      await collection
          .doc(messageId)
          .update(message.copyWith(status: 'seen').toDTO().toJson());
    }
  }
}
