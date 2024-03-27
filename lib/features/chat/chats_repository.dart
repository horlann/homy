import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:homyyy/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:homyyy/features/chat/ui/list_of_chats/cubit/chats_cubit.dart';
import 'package:homyyy/features/osbb/data/models/osbb_model.dart';
import 'package:shared/api/firebase_auth_api.dart';

abstract class ChatsRepository {
  Future<List<UserChatInfo>> userChats(
    String id,
  );

}

class ChatsRepositoryImpl implements ChatsRepository {
  ChatsRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;
  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection('chats');

  @override
  Future<List<UserChatInfo>> userChats(
    String id,
  ) async {
     try {
      return _collection
          .where('users',arrayContains: id)
          .get()
          .then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          try {
          return  snapshot.docs.map((e) => UserChatInfo.fromJson(e.data())).toList();
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
