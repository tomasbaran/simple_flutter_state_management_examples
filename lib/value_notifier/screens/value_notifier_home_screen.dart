import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/services/dependency_locator.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/states/person_state.dart';

import '../widgets/value_notifier_dark_mode_switch.dart';

class ValueNotifierHomeScreen extends StatefulWidget {
  const ValueNotifierHomeScreen({
    super.key,
  });

  @override
  State<ValueNotifierHomeScreen> createState() => _ValueNotifierHomeScreenState();
}

class _ValueNotifierHomeScreenState extends State<ValueNotifierHomeScreen> {
  final personState = locate<PersonState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => personState.setRandomPerson(),
        child: const Icon(Icons.switch_access_shortcut),
      ),
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          ValueNotifierDarkModeSwitch(),
        ],
      ),
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: personState.selectedPerson,
            builder: (context, selectedPerson, child) {
              return Text('Hello ${selectedPerson?.name ?? 'world'}!');
            }),
      ),
    );
  }
}
