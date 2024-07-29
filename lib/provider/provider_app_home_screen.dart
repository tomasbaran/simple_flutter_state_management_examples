import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_flutter_state_management_examples/provider/provider_app_vm.dart';

class ProviderHomeScreen extends StatelessWidget {
  const ProviderHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: const [
          ProviderDarkModeSwitch(),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}

class ProviderDarkModeSwitch extends StatelessWidget {
  const ProviderDarkModeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderAppVM>(
      builder: (context, vmValue, child) => Row(
        children: [
          Text(vmValue.themeMode.name),
          Switch.adaptive(
            value: vmValue.themeMode == ThemeMode.dark,
            onChanged: (bool newValue) => vmValue.toggleTheme(newValue),
          ),
        ],
      ),
    );
  }
}
