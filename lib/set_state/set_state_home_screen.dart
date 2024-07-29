import 'package:flutter/material.dart';

class SetStateHomeScreen extends StatelessWidget {
  final Brightness appBrightness;
  final Function toggleTheme;
  const SetStateHomeScreen({
    super.key,
    required this.appBrightness,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          DarkModeSwitch(
            appBrightness: appBrightness,
            toggleTheme: toggleTheme,
          ),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}

class DarkModeSwitch extends StatelessWidget {
  const DarkModeSwitch({
    super.key,
    required this.appBrightness,
    required this.toggleTheme,
  });

  final Brightness appBrightness;
  final Function toggleTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(appBrightness.name),
        Switch.adaptive(
          value: appBrightness == Brightness.dark,
          onChanged: (bool newValue) => toggleTheme(newValue),
        ),
      ],
    );
  }
}
