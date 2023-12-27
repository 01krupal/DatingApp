import 'dart:io';

import 'package:flutter/material.dart';

class ColorConstant {
  static Color  primaryColor = const Color(0xFFE94057);
  static Color  backgroundColor = const Color(0xFFF0F0F0);
  static Color btnRed= const Color(0xFFE94057);
  static Color btnBackgrung = const Color(0xFDFAD9DD);
  static Color primaryAppTextF1= const Color(0xFFF2F2F2);
  static Color dotRed= const Color(0xFFE94057);
  static Color dotGrey= const Color(0xFFE8E6EA);
  static Color navigationbar= const Color(0xFFF3F3F3);
  static Color  primaryWhite = const Color(0xFFffffff);
  static Color transPatent=  Colors.transparent;
  static Color blackC=  Colors.black;


  // new ui screen color


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
