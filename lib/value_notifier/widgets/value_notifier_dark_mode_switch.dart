import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/state/theme_state.dart';

class ValueNotifierDarkModeSwitch extends StatelessWidget {
  ValueNotifierDarkModeSwitch({
    super.key,
  });

  final themeState = ThemeState();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: ThemeState().themeMode,
        builder: (context, themeModeValue, child) {
          return Row(
            children: [
              Text(themeModeValue.name),
              Switch.adaptive(
                value: themeModeValue == ThemeMode.dark,
                onChanged: (bool newValue) => themeState.setThemeMode(newValue ? ThemeMode.dark : ThemeMode.light),
              ),
            ],
          );
        });
  }
}
