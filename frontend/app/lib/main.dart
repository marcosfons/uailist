import 'package:flutter/material.dart';
import 'package:uailist/src/core/themes/light_theme.dart';
import 'package:uailist/src/screens/auth/auth_screen.dart';
import 'package:uailist/src/screens/list/list_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uailist',
      theme: lightTheme,
      home: const AuthScreen(),
      //home: ListScreen(),
    );
  }
}
