import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'set_state_home_screen.dart';

class SetStateApp extends StatefulWidget {
  const SetStateApp({super.key});

  @override
  State<SetStateApp> createState() => _SetStateAppState();
}

class _SetStateAppState extends State<SetStateApp> {
  late Brightness appBrightness;

  @override
  void initState() {
    super.initState();
    appBrightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
  }

  void toggleAppBrightness(bool isDarkMode) {
    setState(() {
      appBrightness = isDarkMode ? Brightness.dark : Brightness.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: appBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light,
      home: SetStateHomeScreen(
        appBrightness: appBrightness,
        toggleTheme: toggleAppBrightness,
      ),
    );
  }
}
