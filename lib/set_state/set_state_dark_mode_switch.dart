import 'package:flutter/material.dart';

class SetStateDarkModeSwitch extends StatelessWidget {
  const SetStateDarkModeSwitch({
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
