import 'package:flutter/material.dart';

class ThemeChangeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void setTheme(ThemeMode? mode) {
    if (mode != null) {
      _themeMode = mode;
      notifyListeners();
    }
  }
}
