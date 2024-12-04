import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: const Color(
            0xFF42462D), // Set foreground color to match scaffold color
        padding: const EdgeInsets.symmetric(horizontal: 16),
        minimumSize:
            const Size(300, 48), // Set minimum size to 300 width and 48 height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Set border radius to 15
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
      ),
    );
  }
}
