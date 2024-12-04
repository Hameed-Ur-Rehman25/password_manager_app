import 'package:flutter/material.dart';
import 'package:password_manager_app/widgets/custom_button.dart';
import 'package:password_manager_app/widgets/custom_textfield.dart';
import 'package:svg_flutter/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: Colors.white, // Set welcome text color to white
              ),
            ),
            const Text(
              'Login to your account',
              style: TextStyle(
                color: Colors.white, // Set login text color to white
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextfield(hintText: 'Email'), // Email TextField
            const SizedBox(
              height: 20,
            ),
            const CustomTextfield(hintText: 'Password'), // Password TextField
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle forget password action
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.white, // Set text color to white
                    decoration: TextDecoration.underline, // Underline the text
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                title: 'Login',
                onPressed: () {
                  // Handle login action
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Divider(color: Colors.white),
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'OR',
                    style: TextStyle(
                        color: Colors.white), // Set OR text color to white
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Divider(color: Colors.white),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon:
                      SvgPicture.asset('assets/icons/Facebook - Original.svg'),
                  onPressed: () {
                    // Handle Facebook login action
                  },
                ),
                const SizedBox(width: 20), // Space between icons
                IconButton(
                  icon: SvgPicture.asset('assets/icons/Google - Original.svg'),
                  onPressed: () {
                    // Handle Google login action
                  },
                ),
              ],
            ),
            const SizedBox(height: 20), // Space before the sign-up text
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle sign-up action
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Text(
                  'Don\'t have an account? Sign Up',
                  style: TextStyle(
                    color: Colors.white, // Set sign-up text color to white
                    decoration: TextDecoration.underline, // Underline the text
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
