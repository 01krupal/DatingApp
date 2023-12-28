import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:dating_app/routes/app_routes.dart';
import '../../Utils/HelperFiles/math_utils.dart';
import 'controller/code_screen_controller.dart';
import '../../App Configurations/ConstantsFiles/color_constants.dart';
import '../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../App Configurations/ConstantsFiles/string_constants.dart';
import '../../Custom Widgets/NumPad.dart';

class CodeScreen extends StatelessWidget {
  CodeScreen({Key? key}) : super(key: key);

  final CodeScreenController codeController = Get.put(CodeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(45),
                  top: getVerticalSize(80),
                ),
                child: Container(
                  height: getVerticalSize(55),
                  width: getHorizontalSize(53),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Image.asset(AppImages.right),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: getVerticalSize(50)),
                  Obx(
                        () => Text(
                      codeController.formattedTime.value,
                      style: TextStyle(
                        fontSize: getFontSize(55),
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: getVerticalSize(15)),
                  Text(
                    StringConstants.typeThe,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getFontSize(20)),
                  ),
                  SizedBox(height: getVerticalSize(60)),
                  Center(
                    child: Pinput(
                      readOnly: true,
                      controller: codeController.pinController,
                      length: 4,
                      keyboardType: TextInputType.number,
                      defaultPinTheme: codeController.defaultPinTheme,
                      focusedPinTheme: codeController.defaultPinTheme.copyWith(
                        decoration: codeController.defaultPinTheme.decoration!.copyWith(
                          border: Border.all(
                            color: codeController.isTimerExpired.value
                                ? Colors.red // Set the border color to red when the timer expires
                                : ColorConstant.btnRed,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getVerticalSize(60)),
                  Column(
                    children: [
                      NumPad(
                        type: 'OTP4',
                        controller: codeController.pinController,
                        delete: () {
                          HapticFeedback.lightImpact();
                          if (codeController.pinController.text.isNotEmpty) {
                            codeController.pinController.text =
                                codeController.pinController.text.substring(
                                  0,
                                  codeController.pinController.text.length - 1,
                                );
                          }
                        },
                        onSubmit: () {
                          if (codeController.pinController.text.length == 4) {
                            if (codeController.isTimerExpired.value) {
                              // Timer has expired, show a message or handle as needed
                              Get.snackbar(
                                'Error',
                                'The timer has expired. Please request a new code.',
                                snackPosition: SnackPosition.TOP,
                              );
                            } else {
                              // Valid 4-digit code entered, navigate to the next screen
                              Get.toNamed(AppRoutes.profileScreen);
                              // Optionally restart the timer
                              codeController.restartTimer();
                            }
                          } else {
                            // Invalid code length, show a message
                            Get.snackbar(
                              'Error',
                              'Please enter a valid 4-digit code',
                              snackPosition: SnackPosition.TOP,
                            );
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeController.pinController.text.length == 4) {
                            if (codeController.isTimerExpired.value) {
                              // Timer has expired, show a message or handle as needed
                              Get.snackbar(
                                'Error',
                                'The timer has expired. Please request a new code.',
                                snackPosition: SnackPosition.TOP,
                              );
                            } else {
                              // Valid 4-digit code entered, navigate to the next screen
                              Get.toNamed(AppRoutes.profileScreen);
                              // Optionally restart the timer
                              codeController.restartTimer();
                            }
                          } else {
                            // Invalid code length, show a message
                            Get.snackbar(
                              'Error',
                              'Please enter a valid 4-digit code',
                              snackPosition: SnackPosition.TOP,
                            );
                          }
                        },
                        style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(Colors.transparent),
                        ),
                        child: Text(
                          StringConstants.sendA,
                          style: TextStyle(
                            color: ColorConstant.primaryColor,
                            fontSize: getFontSize(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
