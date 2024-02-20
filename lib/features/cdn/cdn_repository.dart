import 'dart:io';

import 'package:homyyy/features/cdn/storage/firebase_storage.dart';

abstract class CDNStorageRepository {
  Future<String> put(File file, String path);

  Future<void> delete(String path);

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
