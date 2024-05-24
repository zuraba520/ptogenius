import 'package:flutter/material.dart';

class AppTheme {
  static const thirtySixBold = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
  );

  static const twentyEight = TextStyle(
    fontSize: 22,
  );

  static const twentyEightBold = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );

  static const twentyTwo = TextStyle(
    fontSize: 22,
  );

  static const twentyTwoBold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const eighteen = TextStyle(
    fontSize: 18,
  );

  static const eighteenBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static const sixteen = TextStyle(
    fontSize: 16,
  );

  static const sixteenBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const fourteen = TextStyle(
    fontSize: 14,
  );

  static const fourteenBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const twelve = TextStyle(
    fontSize: 12,
  );

  static const twelveBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static const white = Color.fromRGBO(255, 255, 255, 1);
  static const black = Color.fromRGBO(0, 0, 0, 1.0);
  static const purple = Color.fromRGBO(242, 239, 254, 1);
  static const lightPurple = Color.fromRGBO(242, 239, 254, 1.0);
  static const mediumPurple = Color.fromRGBO(157, 113, 253, 1);
  static const darkPurple = Color.fromRGBO(95, 81, 125, 1);
  static const gray = Color.fromRGBO(220, 199, 199, 1.0);

  static ThemeData applicationTheme() {
    return ThemeData(
      scaffoldBackgroundColor: white,
      primaryColor: black,
    );
  }
}
