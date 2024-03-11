import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:shared/api/firebase_auth_api.dart';

import 'exceptions/courier_exceptions.dart';


abstract class UserRepository  {
  Future<UserEntity> getUserById(String userId);

  Future<void> insertUser(UserEntity user);

  Stream<UserEntity> listenUserById(String userId);

  Future<void> updatePhoneNumber(String phone);

  Future<void> updateFcmToken(String fcmToken);

  String? get id;
}

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this._firestore, this._authApi);

  static const _path = 'users';
  final FirebaseFirestore _firestore;
  final FirebaseAuthApi? _authApi;

  @override
  String? get id => _authApi?.user?.uid;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(_path);

  @pragma('For test purposes')
  @override
  Future<void> insertUser(UserEntity user) async {
    try {
      await _collection.doc(user.id).set(user.toJson());
    } catch (e) {
      //
    }
  }

  @override
  Future<UserEntity> getUserById(String userId) async {
    try {
      return _collection
          .where('id', isEqualTo: userId)
          .get()
          .then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          try {
            final courier = UserEntity.fromJson(snapshot.docs.first.data());
            return courier;
          } catch (e, s) {
            Error.throwWithStackTrace(
              Exception('User serialization error'),
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

  @override
  Stream<UserEntity> listenUserById(String userId) {
    return _collection.where('id', isEqualTo: userId).snapshots().asyncMap(
      (snapshot) async {
        if (snapshot.docs.isNotEmpty) {
          try {
            final user = UserEntity.fromJson(snapshot.docs.first.data());
            return user;
          } catch (e) {
            rethrow;
          }
        }
        throw NoCourierException();
      },
    );
  }


  @override
  Future<void> updatePhoneNumber(String phone) async {
    if (id == null) {
      throw NoCourierException();
    }
    return _collection.doc(id).update({'phone': phone});
  }


  @override
  Future<void> updateFcmToken(String fcmToken) async {
    if (id == null) {
      throw NoCourierException();
    }
    final courier = await getUserById(id ?? '');
    if (courier.fcmToken != fcmToken) {
      await _collection.doc(id).update({'fcm_token': fcmToken});
    }
  }
}
