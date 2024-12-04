import 'package:flutter/material.dart';
import 'package:password_manager_app/widgets/custom_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              title: 'Log In',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Sign Up',
              onPressed: () {},
            ),
            const SizedBox(
              height: 80, // Added space from the bottom
            ),
          ],
        ),
      ),
    );
  }
}
