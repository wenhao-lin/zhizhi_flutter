import 'package:flutter/material.dart';

class GlobalConfig {
  static bool dark = false;
  // static ThemeData themeData = new ThemeData.dark();
  static ThemeData themeData = new ThemeData(
    primaryColor: Colors.white, // 将primaryColor设置为白色
    fontFamily: 'PingFang',
    brightness: Brightness.light,
    scaffoldBackgroundColor: new Color(0xFFEBEBEB),
    cardColor: Colors.white,
    dividerColor: new Color(0xFFEEEEEE),
  );
  static Color searchBackgroundColor = Color.fromARGB(26, 255, 255, 255);
  static Color cardBackgroundColor = Color.fromARGB(255, 255, 255, 255);
  static Color fontColor = Color.fromARGB(255,89, 89, 89);
}