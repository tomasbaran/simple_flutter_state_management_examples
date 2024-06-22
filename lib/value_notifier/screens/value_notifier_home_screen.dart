import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/services/dependency_locator.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/states/person_state.dart';

import '../widgets/value_notifier_dark_mode_switch.dart';

class ValueNotifierHomeScreen extends StatelessWidget {
  const ValueNotifierHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final personState = locate<PersonState>();
    return Scaffold(
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
              return Text('Hello ${selectedPerson ?? 'world'}!');
            }),
      ),
    );
  }
}
