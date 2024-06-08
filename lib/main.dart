import 'package:change_theme_template/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
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
      home: HomeScreen(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
    );
  }
}
