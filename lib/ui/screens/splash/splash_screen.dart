import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Delay navigation to the signup screen by 3 seconds
    Timer(Duration(seconds: 1), () {
      // Navigate to the signup screen
      context.go('/profile');
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/carrimen_logo_2.png'),
          ],
        ),
      ),
    );
  }
}
