import 'package:flutter/material.dart';

class ThemeState {
  ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.system);

  void setThemeMode(ThemeMode newThemeMode) {
    themeMode.value = newThemeMode;
  }
}
