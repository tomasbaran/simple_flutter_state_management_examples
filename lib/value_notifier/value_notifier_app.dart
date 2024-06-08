import 'screens/value_notifier_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ValueNotifierApp extends StatefulWidget {
  const ValueNotifierApp({super.key});

  @override
  State<ValueNotifierApp> createState() => _ValueNotifierAppState();
}

class _ValueNotifierAppState extends State<ValueNotifierApp> {
  late bool isDarkMode;

  @override
  void initState() {
    super.initState();
    isDarkMode = SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
  }

  void toggleTheme(bool valueFromSwitch) {
    setState(() {
      isDarkMode = valueFromSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: ValueNotifierHomeScreen(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
    );
  }
}
