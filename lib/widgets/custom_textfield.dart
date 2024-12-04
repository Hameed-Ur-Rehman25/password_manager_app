import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final String hintText;

  const CustomTextfield({super.key, required this.hintText});

  @override
  _CustomTextfieldState createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          color: Colors.white), // Set user entered text color to white
      obscureText:
          widget.hintText.toLowerCase() == 'password' ? _obscureText : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.white), // White hint text
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // White border
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.white), // White border when focused
        ),
        suffixIcon: widget.hintText.toLowerCase() == 'password'
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white, // Optional: white icon color
                ),
                onPressed: _togglePasswordVisibility,
              )
            : null,
      ),
    );
  }

  @override
  void dispose() {
    // Clean up any resources if needed
    super.dispose();
  }
}
