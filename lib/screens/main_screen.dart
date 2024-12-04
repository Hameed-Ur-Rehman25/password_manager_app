import 'package:flutter/material.dart';
import 'package:password_manager_app/widgets/custom_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomButton(title: 'Log In'),
        ],
      ),
    );
  }
}
