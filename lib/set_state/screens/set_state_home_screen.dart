import 'package:change_theme_template/set_state/widgets/set_state_dark_mode_switch.dart';
import 'package:flutter/material.dart';

class SetStateHomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final Function toggleTheme;
  const SetStateHomeScreen({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          SetStateDarkModeSwitch(isDarkMode: isDarkMode, toggleTheme: toggleTheme),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
