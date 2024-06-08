import 'package:flutter/material.dart';
import '../services/dependency_locator.dart';
import '../states/theme_state.dart';

class ValueNotifierDarkModeSwitch extends StatelessWidget {
  ValueNotifierDarkModeSwitch({
    super.key,
  });

  final themeState = locate<ThemeState>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeState.themeMode,
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
