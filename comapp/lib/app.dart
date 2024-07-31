import 'package:comapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';

/// Use this class to setup themes, initial Bindings any animation and much...
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, // set theme system default
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
