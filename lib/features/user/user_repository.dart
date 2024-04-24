import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homyyy/features/government/models/government_user.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:shared/api/firebase_auth_api.dart';

import 'exceptions/user_exceptions.dart';

abstract class UserRepository {
  Future<UserEntity> getUserById(String userId);

  Future<GovernmentUserEntity> getGovUserById(String userId);

  Future<List<GovernmentUserEntity>> getGovUsersByOSBBId(String osbbId);

  Future<void> insertUser(UserEntity user);

  Stream<UserEntity> listenUserById(String userId);

  Future<void> updatePhoneNumber(String phone);

  Future<void> updateFcmToken(String fcmToken);

  Future<List<UserEntity>> getUsersByOsbb(String osbbId);

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
      return _collection.where('id', isEqualTo: userId).get().then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          try {
            final user = UserEntity.fromJson(snapshot.docs.first.data());
            return user;
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
  Future<GovernmentUserEntity> getGovUserById(String userId) async {
    try {
      return _collection.where('id', isEqualTo: userId).get().then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          try {
            final user =
                GovernmentUserEntity.fromJson(snapshot.docs.first.data());
            return user;
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
  Future<List<GovernmentUserEntity>> getGovUsersByOSBBId(String osbbId) async {
    try {
      return _collection
          .where('user_type', isEqualTo: 'admin')
      //todo:
          .where('osbb_id', isEqualTo: osbbId)
          .get()
          .then((snapshot) {
        return snapshot.docs.map((e) {
          try {
            final user =
                GovernmentUserEntity.fromJson(e.data());
            return user;
          } catch (e, s) {
            print(e);
            Error.throwWithStackTrace(
              Exception('User serialization error'),
              s,
            );
          }
        }).toList();
      });
    } catch (e) {
      print(e);

      rethrow;
    }
  }

  @override
  Future<List<UserEntity>> getUsersByOsbb(String osbbId) async {
    try {
      return _collection
          .where('osbb_id', isEqualTo: osbbId)
          .get()
          .then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          try {
            return snapshot.docs
                .map((e) => UserEntity.fromJson(e.data()))
                .toList();
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
        throw NoUserException();
      },
    );
  }

  @override
  Future<void> updatePhoneNumber(String phone) async {
    if (id == null) {
      throw NoUserException();
    }
    return _collection.doc(id).update({'phone': phone});
  }

  @override
  Future<void> updateFcmToken(String fcmToken) async {
    if (id == null) {
      throw NoUserException();
    }
    final courier = await getUserById(id ?? '');
    if (courier.fcmToken != fcmToken) {
      await _collection.doc(id).update({'fcm_token': fcmToken});
    }
  }
}
