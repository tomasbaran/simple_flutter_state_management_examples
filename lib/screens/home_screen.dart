import 'package:change_theme_template/widgets/dark_mode_switch.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final Function toggleTheme;
  const HomeScreen({
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
          // IconButton(
          //   icon: const Icon(Icons.settings),
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/settings');
          //   },
          // ),
          DarkModeSwitch(isDarkMode: isDarkMode, toggleTheme: toggleTheme)
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
