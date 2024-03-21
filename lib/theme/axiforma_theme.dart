import 'package:flutter/material.dart';

class CustomTextStyle {
  final double fontSize;
  final Color color;
  final TextStyle _axiformaBlack;
  final TextStyle _axiformaBold;
  final TextStyle _axiformaExtraBold;
  final TextStyle _axiformaHeavy;
  final TextStyle _axiformaLight;
  final TextStyle _axiformaMedium;
  final TextStyle _axiformaRegular;
  final TextStyle _axiformaSemiBold;
  final TextStyle _axiformaThin;

  CustomTextStyle({
    this.fontSize = 12,
    this.color = Colors.black,
  })  : _axiformaBlack = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.w300,
          color: color,
        ),
        _axiformaBold = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: color,
        ),
        _axiformaExtraBold = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.w800,
          color: color,
        ),
        _axiformaHeavy = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.w800,
          color: color,
        ),
        _axiformaLight = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.w300,
          color: color,
        ),
        _axiformaMedium = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: color,
        ),
        _axiformaRegular = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.normal,
          color: color,
        ),
        _axiformaSemiBold = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          color: color,
        ),
        _axiformaThin = TextStyle(
          fontFamily: 'Axiforma',
          fontSize: fontSize,
          fontWeight: FontWeight.w200,
          color: color,
        );

  TextStyle get axiformaBlack => _axiformaBlack;
  TextStyle get axiformaBold => _axiformaBold;
  TextStyle get axiformaExtraBold => _axiformaExtraBold;
  TextStyle get axiformaHeavy => _axiformaHeavy;
  TextStyle get axiformaLight => _axiformaLight;
  TextStyle get axiformaMedium => _axiformaMedium;
  TextStyle get axiformaRegular => _axiformaRegular;
  TextStyle get axiformaSemiBold => _axiformaSemiBold;
  TextStyle get axiformaThin => _axiformaThin;

  TextStyle axiformaTextStyle({
    FontWeight fontWeight = FontWeight.normal,
    double? fontSize,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: 'Axiforma',
      fontSize: fontSize ?? 10,
      fontWeight: fontWeight,
      color: color ?? Colors.black,
    );
  }
}
