import 'package:flutter/material.dart';
import 'set_state_dark_mode_switch.dart';

class SetStateHomeScreen extends StatelessWidget {
  final Brightness themeBrightness;
  final Function toggleTheme;
  const SetStateHomeScreen({
    super.key,
    required this.themeBrightness,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          SetStateDarkModeSwitch(themeBrightness: themeBrightness, toggleTheme: toggleTheme),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
