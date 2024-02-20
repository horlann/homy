import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

abstract class CDNStorage {
  Future<String> put(File file, String path);

  Future<void> delete(String path);

  Future<String> getPath(String path);
}

class FirebaseStorageImpl implements CDNStorage {
  FirebaseStorageImpl(this._storage);

  final FirebaseStorage _storage;

  @override
  Future<void> delete(String path) async {
    try {
      await _storage.ref(path).delete();
    } catch (e) {
      //
    }
  }

  @override
  Future<String> getPath(String path) async {
    try {
      final downloadPath = await _storage.ref(path).getDownloadURL();
      return downloadPath;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> put(File file, String path) async {
    try {
      final task = await _storage.ref().child(path).putFile(file);
      return task.ref.getDownloadURL();
    } catch (e) {
      rethrow;
    }
  }
}
