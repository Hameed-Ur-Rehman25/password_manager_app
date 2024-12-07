import 'package:flutter/material.dart';
import 'package:password_manager_app/screens/home_screen.dart';
import 'package:password_manager_app/screens/main_screen.dart';
import 'package:password_manager_app/screens/login_screen.dart';
import 'package:password_manager_app/screens/signup_screen.dart';
import 'package:password_manager_app/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
      },
    );
  }
}
