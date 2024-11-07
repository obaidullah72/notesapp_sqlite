import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start the initialization process
    _initialize();
  }

  /// Initializes the splash screen by waiting for a duration and then navigating
  Future<void> _initialize() async {
    // Wait for 5 seconds
    await Future.delayed(const Duration(seconds: 5));

    // Check if the widget is still mounted before navigating
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/startup.json",
              width: size.width, // Adjust the size as needed
              height: size.height * 0.4,
              fit: BoxFit.contain,
            ),
            const Text(
              'E-Notes App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo, // Adjust color as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
