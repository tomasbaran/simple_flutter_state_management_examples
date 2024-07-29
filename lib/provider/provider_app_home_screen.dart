import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
          DarkModeSwitch(),
        ],
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}

class DarkModeSwitch extends StatefulWidget {
  const DarkModeSwitch({
    super.key,
  });

  @override
  State<DarkModeSwitch> createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final defaultSystemBrightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;

      Provider.of<ProviderAppVM>(context, listen: false)
          .setAppBrightness(defaultSystemBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderAppVM>(
      builder: (context, appVM, child) => Row(
        children: [
          Text(appVM.appBrightness.name),
          Switch.adaptive(
            value: appVM.appBrightness == ThemeMode.dark,
            onChanged: (bool darkMode) => appVM.toggleAppBrightness(darkMode),
          ),
        ],
      ),
    );
  }
}
