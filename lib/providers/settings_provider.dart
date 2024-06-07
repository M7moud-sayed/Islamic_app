import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;

  Future<void> changeTheme(ThemeMode newTheme) async {
    if (theme == newTheme) return;
    theme = newTheme;
    notifyListeners();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isDark", newTheme == ThemeMode.dark);
  }

  String language = "en";

  Future<void> changeLanguage(String newLanguage) async {
    if (language == newLanguage) return;
    language = newLanguage;
    notifyListeners();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("lang", newLanguage);
  }

  Future<void> getLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? lang = prefs.getString("lang");
    if (lang != null) {
      language = lang;
      notifyListeners();
    }
  }

  Future<void> getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool("isDark");
    if (isDark != null) {
      if (isDark) {
        theme = ThemeMode.dark;
      } else {
        theme = ThemeMode.light;
      }
      notifyListeners();
    }
  }
}
