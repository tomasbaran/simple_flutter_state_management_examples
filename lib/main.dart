import 'package:simple_flutter_state_management_examples/provider/provider_app.dart';
import 'value_notifier/core/services/dependency_locator.dart';
import 'set_state/set_state_app.dart';
import 'value_notifier/value_notifier_app.dart';
import 'package:flutter/material.dart';

void main() {
  //============= 1. State Management: Set State =================
  // runApp(const SetStateApp());

  //============= 2. State Management: Value Notifier =============
  // setupLocator();
  // runApp(ValueNotifierApp());

  //============= 3. State Management: Provider =============
  runApp(const ProviderApp());
}
