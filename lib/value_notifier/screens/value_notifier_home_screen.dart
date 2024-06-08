import 'package:flutter/material.dart';
import '../widgets/value_notifier_dark_mode_switch.dart';

class ValueNotifierHomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final Function toggleTheme;
  const ValueNotifierHomeScreen({
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
          ValueNotifierDarkModeSwitch(isDarkMode: isDarkMode, toggleTheme: toggleTheme),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
