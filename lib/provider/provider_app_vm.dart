import 'package:flutter/material.dart';

class ProviderAppVM extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  toggleTheme(bool newValue) {
    themeMode = newValue ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
