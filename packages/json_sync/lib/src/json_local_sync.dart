import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// JSON Local Sync
/// Save and Get a Json [Map<String, dynamic>] from local persistent storage
class JsonLocalSync {
  /// Save a Json object to local persistent storage
  static Future<bool> save({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = json.encode(value);
    return prefs.setString(key, jsonString);
  }

  /// Get a Json object from local persistent storage
  static Future<Map<String, dynamic>?> get({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(key)) {
      return null;
    }

    final jsonString = prefs.getString(key);
    if (jsonString == null) {
      return null;
    }
    final value = jsonDecode(jsonString) as Map<String, dynamic>;
    return value;
  }

  static Future<bool> delete({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }
}
