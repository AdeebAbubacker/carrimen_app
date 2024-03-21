import 'package:flutter/material.dart';

class CustomTextStyle {
  final TextStyle _axiformaBlack;
  final TextStyle _axiformaBold;
  // Add other font styles for different weights

  CustomTextStyle()
      : _axiformaBlack = const TextStyle(
          fontFamily: 'Axiforma',
          fontSize: 16.0, // Adjust font size as needed
          fontWeight: FontWeight.w900, // Black weight
          color: Colors.black,
        ),
        _axiformaBold = const TextStyle(
          fontFamily: 'Axiforma',
          fontSize: 16.0, // Adjust font size as needed
          fontWeight: FontWeight.w700, // Bold weight
          color: Colors.black,
        ) {}

  TextStyle get axiformaBlack => _axiformaBlack;
  TextStyle get axiformaBold => _axiformaBold;
}
