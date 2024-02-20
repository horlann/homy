import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homyyy/features/user/models/active_image_link.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:shared/api/firebase_auth_api.dart';

import 'exceptions/courier_exceptions.dart';


abstract class UserRepository  {
  Future<UserEntity> getCourierById(String courierId);

  Future<void> insertCourier(UserEntity courier);

  Stream<UserEntity> listenCourierCourierById(String courierId);

  Future<void> updateCourierWorkStatus(bool status);

  Future<void> updatePhoneNumber(String phone);

  Future<void> updatePhoto(String photoLink);

  Future<void> updateFcmToken(String fcmToken);

  String? get id;
}

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this._firestore, this._authApi);

  static const _path = 'couriers';
  final FirebaseFirestore _firestore;
  final FirebaseAuthApi? _authApi;

  @override
  String? get id => _authApi?.user?.uid;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(_path);

  @pragma('For test purposes')
  @override
  Future<void> insertCourier(UserEntity courier) async {
    try {
      await _collection.doc(courier.id).set(courier.toJson());
    } catch (e) {
      //
    }
  }

  @override
  Future<UserEntity> getCourierById(String courierId) async {
    try {
      return _collection
          .where('id', isEqualTo: courierId)
          .get()
          .then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          try {
            final courier = UserEntity.fromJson(snapshot.docs.first.data());
            return courier;
          } catch (e, s) {
            Error.throwWithStackTrace(
              Exception('Courier serialization error'),
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
  Stream<UserEntity> listenCourierCourierById(String courierId) {
    return _collection.where('id', isEqualTo: courierId).snapshots().asyncMap(
      (snapshot) async {
        if (snapshot.docs.isNotEmpty) {
          try {
            final courier = UserEntity.fromJson(snapshot.docs.first.data());
            return courier;
          } catch (e) {
            rethrow;
          }
        }
        throw NoCourierException();
      },
    );
  }

  @override
  Future<void> updateCourierWorkStatus(bool status) async {
    if (id == null) {
      throw NoCourierException();
    }
    return _collection.doc(id).update({
      'is_online': status,
    });
  }

  @override
  Future<void> updatePhoneNumber(String phone) async {
    if (id == null) {
      throw NoCourierException();
    }
    return _collection.doc(id).update({'phone': phone});
  }

  @override
  Future<void> updatePhoto(String photoLink) async {
    if (id == null) {
      throw NoCourierException();
    }
    final courier = await getCourierById(id ?? '');
    final list = [];
    list.addAll(courier.imageLinks);
    list.add(ActiveImageLink(imageLink: photoLink, selected: false));
    await _collection
        .doc(id)
        .update({'image_links': list.map((e) => e.toJson()).toList()});
  }

  @override
  Future<void> updateFcmToken(String fcmToken) async {
    if (id == null) {
      throw NoCourierException();
    }
    final courier = await getCourierById(id ?? '');
    if (courier.fcmToken != fcmToken) {
      await _collection.doc(id).update({'fcm_token': fcmToken});
    }
  }
}
