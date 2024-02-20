
import 'package:homyyy/core/cache/storage.dart';

/// Provide  storing of data
abstract class SharedPrefs implements Storage<String> {
  /// Get all values from the storage as map
  Future<Map<String, String>> allValues();
}
