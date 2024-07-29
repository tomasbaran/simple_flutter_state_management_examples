import 'package:flutter/material.dart';

class SetStateDarkModeSwitch extends StatelessWidget {
  const SetStateDarkModeSwitch({
    super.key,
    required this.themeBrightness,
    required this.toggleTheme,
  });

  final Brightness themeBrightness;
  final Function toggleTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(themeBrightness.name),
        Switch.adaptive(
          value: themeBrightness == Brightness.dark,
          onChanged: (bool newValue) => toggleTheme(newValue),
        ),
      ],
    );
  }
}
