import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Manager App'),
      ),
      body: Container(
        color: Colors.red,
        width: double.infinity,
        child: const Column(
          children: [],
        ),
      ),
    );
  }
}
