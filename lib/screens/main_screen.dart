import 'package:flutter/material.dart';
import 'package:password_manager_app/widgets/custom_button.dart';
import 'package:svg_flutter/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              'assets/main_screen1.svg',
              // height: 200, // Adjust the height as needed
              // width: 200, // Adjust the width as needed
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              title: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Sign Up',
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
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
