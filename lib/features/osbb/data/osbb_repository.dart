import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:homyyy/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:homyyy/features/osbb/data/models/osbb_model.dart';
import 'package:shared/api/firebase_auth_api.dart';

abstract class OSBBRepository {
  Future<OSBBModel> getOSBB(
    String id,
  );
  Stream<OSBBModel> getOSBBStream(
    String id,
  );
}

class OSBBRepositoryImpl implements OSBBRepository {
  OSBBRepositoryImpl(this._firestore);
  final FirebaseFirestore _firestore;
 CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection('osbb');

  @override
  Future<OSBBModel> getOSBB(
    String id,
  ) async {
 try {
      return _collection
          .where('id', isEqualTo: id)
          .get()
          .then((snapshot) {
        if (snapshot.docs.isNotEmpty) {
          try {
            final courier = OSBBModel.fromJson(snapshot.docs.first.data());
            return courier;
          } catch (e, s) {
            Error.throwWithStackTrace(
              Exception('OSBB serialization error'),
              s,
            );
          }
        } else {
          throw Exception();
        }
      });
    } catch (e) {
      rethrow;
    }  }

  @override
  Stream<OSBBModel> getOSBBStream(
    String id,
  )  {
    return _collection.where('id', isEqualTo: id).snapshots().asyncMap(
      (snapshot) async {
        if (snapshot.docs.isNotEmpty) {
          try {
            final user = OSBBModel.fromJson(snapshot.docs.first.data());
            return user;
          } catch (e) {
            rethrow;
          }
        }
        throw Exception();
      },
    );
}}
