import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'screens/set_state_home_screen.dart';

class SetStateApp extends StatefulWidget {
  const SetStateApp({super.key});

  @override
  State<SetStateApp> createState() => _SetStateAppState();
}

class _SetStateAppState extends State<SetStateApp> {
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
      home: SetStateHomeScreen(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
    );
  }
}
