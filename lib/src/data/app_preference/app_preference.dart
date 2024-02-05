import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  late final SharedPreferences _preference;

  AppPreference._();

  static final instance = AppPreference._();

  SharedPreferences get preference => _preference;

  void initPreference(SharedPreferences sharedPreferences) async {
    _preference = sharedPreferences;
  }

  Future<bool> setData(String key, Object? value) async {
    if (value == null) return false;

    if (value is int) {
      return _preference.setInt(key, value);
    } else if (value is String) {
      return _preference.setString(key, value);
    } else if (value is bool) {
      return _preference.setBool(key, value);
    } else if (value is List<dynamic>) {
      return _preference.setStringList(key, value.map((e) => e.toString()).toList());
    } else if (value is double) {
      return _preference.setDouble(key, value);
    }

    return false;
  }

  String? getString(String key) {
    String? value = _preference.getString(key);
    if (value?.isEmpty == true) value = null;
    return value;
  }

  List<String> getListString(String key) {
    return _preference.getStringList(key) ?? [];
  }

  bool? getBool(String key) {
    return _preference.getBool(key);
  }

  int? getInt(String key) {
    return _preference.getInt(key);
  }

  Future<bool> removeData(String key) async {
    return _preference.remove(key);
  }

  Future<bool> clearToken(String key) async {
    return await _preference.remove(AppPreferenceKey.keyAccessToken);
  }
}

class AppPreferenceKey {
  static const String keyAccessToken = 'access_token';
}
