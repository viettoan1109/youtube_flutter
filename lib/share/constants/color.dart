import 'package:flutter/material.dart';

class ColorConstants {
  static Color lightScaffoldBackgroundColor = hexToColor('#F9F9F9');
  static Color darkScaffoldBackgroundColor = hexToColor('#121212');
  static Color secondaryAppColor = hexToColor('#22DDA6');
  static const Color secondaryDarkAppColor = Colors.white;
  static Color primaryDarkAppColor = hexToColor('#FE6603');
  static Color tipColor = hexToColor('#B6B6B6');
  static const Color lightGray = Color(0xFFF6F6F6);
  static const Color darkGray = Color(0xFF9F9F9F);
  static const Color black = Color(0xFF000000);
  static const Color white999999 = Color(0xFF999999);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black121212 = Color(0xFF121212);
  static const Color blackAlpha80 = Color(0x80000000);
  static const Color black282828 = Color(0xFF282828);
  static const Color black555770 = Color(0xFF555770);
  static const Color blackAAAAAA = Color(0xFFAAAAAA);
  static const Color orangeFE6603 = Color(0xFFFE6603);
  static const Color red = Color(0xFFFF0000);
  static const Color redED1C24 = Color(0xFFED1C24);
  static const Color defaultTextColor = Color(0xFF8D8EA4);
  static const Color progressColor = Color(0xFFFE6603);
  static const Color progressBackground = Color.fromARGB(72, 150, 157, 155);
  static const Color gray8D8EA4 = Color(0xFF8D8EA4);
  static const Color gray8D8EA4Alpha20 = Color(0x408D8EA4);
  static const Color gray555770 = Color(0xFF555770);
  static const Color grayEAEAEA = Color(0xFFEAEAEA);
  static const Color gray606060 = Color(0xFF606060);
  static const Color gray232323 = Color(0xFF232323);
  static const Color green06C270 = Color(0xFF06C270);
  static const Color grayA9AAAD = Color(0xFFA9AAAD);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
  'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
