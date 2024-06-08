import 'package:flutter/material.dart';

class ValueNotifierDarkModeSwitch extends StatelessWidget {
  const ValueNotifierDarkModeSwitch({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  final bool isDarkMode;
  final Function toggleTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(isDarkMode ? 'dark' : 'light'),
        Switch.adaptive(
          value: isDarkMode,
          onChanged: (bool newValue) => toggleTheme(newValue),
        ),
      ],
    );
  }
}
