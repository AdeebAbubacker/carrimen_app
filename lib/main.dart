import 'package:coinswitch_crypto/ui/enter_otp_screen_1.dart';
import 'package:coinswitch_crypto/ui/enter_otp_screen_2.dart';
import 'package:coinswitch_crypto/ui/verify_your_account_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: EnterOtpScreen2(),
      //home: FontTesting(),
    );
  }
}
