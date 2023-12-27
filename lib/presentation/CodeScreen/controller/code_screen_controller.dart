
import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pinput/pinput.dart';

import '../../../App Configurations/ConstantsFiles/string_constants.dart';

class CodeScreenController extends GetxController {

  TextEditingController pinController = TextEditingController();

  var pin = "".obs;

  final defaultPinTheme = PinTheme(
      margin: EdgeInsets.only(left: getHorizontalSize(2)),
      height: getVerticalSize(85),
      width: getHorizontalSize(75),
      textStyle: TextStyle(
          fontSize: getFontSize(25), color: ColorConstant.blackC),
      decoration: BoxDecoration(
          color: ColorConstant.transPatent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: ColorConstant.dotGrey)));

}





