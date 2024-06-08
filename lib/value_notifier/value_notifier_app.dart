import 'state/theme_state.dart';

import 'screens/value_notifier_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ValueNotifierApp extends StatefulWidget {
  const ValueNotifierApp({super.key});

  @override
  State<ValueNotifierApp> createState() => _ValueNotifierAppState();
}

class _ValueNotifierAppState extends State<ValueNotifierApp> {
  final themeState = ThemeState();
  @override
  void initState() {
    super.initState();
    // final isDarkModeByDefault = SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    // themeState.setThemeMode(isDarkModeByDefault);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: themeState.themeMode.value,
      home: const ValueNotifierHomeScreen(),
    );
  }
}
