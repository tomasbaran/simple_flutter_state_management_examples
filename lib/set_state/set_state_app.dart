import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'set_state_home_screen.dart';

class SetStateApp extends StatefulWidget {
  const SetStateApp({super.key});

  @override
  State<SetStateApp> createState() => _SetStateAppState();
}

class _SetStateAppState extends State<SetStateApp> {
  late Brightness themeBrightness;

  @override
  void initState() {
    super.initState();
    themeBrightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
  }

  void toggleTheme(bool valueFromSwitch) {
    setState(() {
      themeBrightness = valueFromSwitch ? Brightness.dark : Brightness.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: themeBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light,
      home: SetStateHomeScreen(
        themeBrightness: themeBrightness,
        toggleTheme: toggleTheme,
      ),
    );
  }
}
