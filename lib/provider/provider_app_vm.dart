import 'package:flutter/material.dart';

class ProviderAppVM extends ChangeNotifier {
  ThemeMode appBrightness = ThemeMode.light;

  setAppBrightness(ThemeMode newMode) {
    appBrightness = newMode;
    notifyListeners();
  }

  toggleAppBrightness(bool isDarkMode) {
    setAppBrightness(isDarkMode ? ThemeMode.dark : ThemeMode.light);
  }
}
