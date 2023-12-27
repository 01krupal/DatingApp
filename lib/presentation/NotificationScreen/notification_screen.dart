import 'package:dating_app/presentation/NotificationScreen/controller/notification_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Configurations/ConstantsFiles/color_constants.dart';
import '../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../App Configurations/ConstantsFiles/string_constants.dart';
import '../../Custom Widgets/app_ElevatedButton .dart';
import '../../Utils/HelperFiles/math_utils.dart';
import '../../routes/app_routes.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  NotificationScreenController NotificationController =
      Get.put(NotificationScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: getVerticalSize(80), right: getHorizontalSize(40)),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                onPressed: () => Get.toNamed(AppRoutes.dashboardScreen),
                child: Text(StringConstants.skiP,
                    style: TextStyle(
                        color: ColorConstant.primaryColor,
                        fontSize: getFontSize(18),
                        fontWeight: FontWeight.w700)),
              )
            ]),
          ),
          SizedBox(height: getVerticalSize(100)),
          Center(
            child: Image.asset(AppImages.notificationImage,
                width: getHorizontalSize(200), height: getVerticalSize(350)),
          ),
          Center(
            child: Text(StringConstants.enable,
                style: TextStyle(
                    fontSize: getFontSize(25), fontWeight: FontWeight.w700)),
          ),
          SizedBox(height: getVerticalSize(20)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(70)),
              child: Text(StringConstants.getPush,
                  style: TextStyle(
                      fontSize: getFontSize(15), fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center)),
          SizedBox(height: getVerticalSize(180)),
          AppElevatedButton(
              buttonName: StringConstants.iWant,
              onPressed: () {
                Get.toNamed(AppRoutes.dashboardScreen);
              }),
        ],
      ),
    );
  }
}
