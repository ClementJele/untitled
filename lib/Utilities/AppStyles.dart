import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color deepOrange = const Color(0xFFF37B67);
  static Color whiteBackground = const Color(0xFFeeedf2);
  static Color blackbackground = const Color.fromARGB(255, 0, 0, 0);
  static Color Orange = const Color(0xFF526799);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle1 = TextStyle(
      fontSize: 25, color: blackbackground, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 =
      TextStyle(fontSize: 15, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 13, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
