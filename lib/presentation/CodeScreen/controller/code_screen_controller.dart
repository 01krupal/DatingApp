
import 'dart:async';

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



  RxInt countdown = 60.obs;
  late RxString formattedTime = "0:00".obs;
  RxBool isTimerExpired = false.obs; // Added this line

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }



  void startTimer() {
    const oneSecond = Duration(seconds: 1);

    Timer.periodic(oneSecond, (timer) {
      if (countdown.value == 0) {
        timer.cancel();
        isTimerExpired.value = true; // Set isTimerExpired to true
        Get.snackbar("Time's up", "Please request a new code");
      } else {
        countdown.value--;
        updateFormattedTime();
      }
    });
  }

  void updateFormattedTime() {
    formattedTime.value =
    "${(countdown.value ~/ 60).toString().padLeft(1, '0')}:${(countdown.value % 60).toString().padLeft(2, '0')}";
  }

  void restartTimer() {
    countdown.value = 60;
    isTimerExpired.value = false; // Reset isTimerExpired to false
  }
}








