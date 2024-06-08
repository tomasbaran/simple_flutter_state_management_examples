import 'services/dependency_locator.dart';

import 'states/theme_state.dart';

import 'screens/value_notifier_home_screen.dart';
import 'package:flutter/material.dart';

class ValueNotifierApp extends StatelessWidget {
  ValueNotifierApp({super.key});

  final themeState = locate<ThemeState>();

  @override
  Widget build(BuildContext context) {
    themeState.setThemeMode(MediaQuery.platformBrightnessOf(context) == Brightness.dark ? ThemeMode.dark : ThemeMode.light);
    return ValueListenableBuilder(
      valueListenable: themeState.themeMode,
      builder: (context, themeModeValue, child) => MaterialApp(
        darkTheme: ThemeData.dark(),
        themeMode: themeModeValue,
        home: const ValueNotifierHomeScreen(),
      ),
    );
  }
}
