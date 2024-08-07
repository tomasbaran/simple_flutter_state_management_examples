import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_flutter_state_management_examples/provider/provider_app_home_screen.dart';
import 'package:simple_flutter_state_management_examples/provider/provider_app_vm.dart';

class ProviderApp extends StatefulWidget {
  const ProviderApp({super.key});

  @override
  State<ProviderApp> createState() => _ProviderAppState();
}

class _ProviderAppState extends State<ProviderApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderAppVM(),
      child: Consumer<ProviderAppVM>(
        builder: (context, appVM, child) {
          return MaterialApp(
            themeMode: appVM.appBrightness,
            darkTheme: ThemeData.dark(),
            home: const ProviderHomeScreen(),
          );
        },
      ),
    );
  }
}
