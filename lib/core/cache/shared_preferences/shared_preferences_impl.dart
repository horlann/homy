import 'dart:developer';

import 'package:homyyy/core/cache/shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Secure storage for storing significant data
class SharedPrefsImpl implements SharedPrefs {
  SharedPrefsImpl(this._prefs);

  final SharedPreferences _prefs;

  @override
  Future<void> delete(String key) {
    return _prefs.remove(key);
  }

  @override
  Future<String?> getByKey(String key, {String? defaultValue}) async {
    try {
      final value = _prefs.getString(key);
      return value ?? defaultValue;
    } catch (e) {
      log('Error while getting value from secure storage: $e');
      return defaultValue;
    }
  }

  @override
  Future<void> put(String key, String value) {
    return _prefs.setString(key, value);
  }

  /// get all values as map
  @override
  Future<Map<String, String>> allValues() {
    throw UnimplementedError();
  }

  /// clear all values
  @override
  Future<void> clear() {
    return _prefs.clear();
  }

  /// get all values and return as list
  @override
  Future<List<String>> getAll() async {
    throw UnimplementedError();
  }

  /// delete all values
  @override
  Future<void> deleteAll() async {
    await _prefs.clear();
    return;
  }

  /// Get all keys in storage as list
  @override
  Future<List<String>> getKeys() async {
    final allValues = _prefs.getKeys();
    return allValues.toList();
  }
}
