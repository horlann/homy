import 'dart:io';

import 'package:homyyy/features/cdn/storage/firebase_storage.dart';

///CDN which provides media content
///from [FIREBASE] [STORAGE]
abstract class CDNStorageRepository {
  ///Put data into cloud storage
  Future<String> put(File file, String path);

  ///Delete data into cloud storage

  Future<void> delete(String path);

  ///Get full path to access content via url

  Future<String> getPath(String path);
}

class CDNRepository implements CDNStorageRepository {
  CDNRepository(this.storage);

  final CDNStorage storage;

  @override
  Future<void> delete(String path) async {
    await storage.delete(path);
  }

  @override
  Future<String> getPath(String path) async {
    return storage.getPath(path);
  }

  @override
  Future<String> put(File file, String path) async {
    return storage.put(file, path);
  }
}
