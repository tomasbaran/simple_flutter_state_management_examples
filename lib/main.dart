import 'value_notifier/services/setup_locator.dart';

import 'set_state/set_state_app.dart';
import 'value_notifier/value_notifier_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();

  runApp(ValueNotifierApp());
}
