import 'package:flutter/material.dart';
import '../App Configurations/fonts.dart';
import '../utils/HelperFiles/math_utils.dart';

class AppStyle {
  static TextStyle skModern = textStyleSK.copyWith(
      fontSize: getFontSize(14), fontWeight: FontWeight.normal);
  static TextStyle textStyleSK = TextStyle(fontFamily: FontFamily.skModern);

}
