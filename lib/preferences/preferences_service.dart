import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  static const _keyUsername = "user_name";
  static const _keyIsDarkMode = "is_dark_mode";
  static const _keyYaInicio = "YaInicio";

  Future<void> setUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyUsername, name);
  }

  Future<String?> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyUsername);
  }

  Future<void> setIsDarkMode(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyIsDarkMode, isDark);
  }

  Future<bool?> getIsDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyIsDarkMode) ?? false;
  }

  Future<void> setYaInicio() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyYaInicio, true);
  }

  Future<bool?> getYaInicio() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyYaInicio);
  }
}
