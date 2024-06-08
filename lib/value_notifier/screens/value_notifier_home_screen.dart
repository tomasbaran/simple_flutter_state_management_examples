import 'package:flutter/material.dart';
import '../widgets/value_notifier_dark_mode_switch.dart';

class ValueNotifierHomeScreen extends StatelessWidget {
  const ValueNotifierHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          ValueNotifierDarkModeSwitch(),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
