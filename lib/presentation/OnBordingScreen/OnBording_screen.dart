import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/Custom%20Widgets/app_ElevatedButton%20.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:dating_app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Configurations/ConstantsFiles/string_constants.dart';
import 'controller/onbording_screen_controller.dart';

class OnBoardingScreen extends GetWidget<OnBoardingScreenController> {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: getVerticalSize(100),
          ),
          CarouselSlider.builder(
            itemCount: controller.onBoardingData.length,
            itemBuilder: (context, index, realIndex) {
              return ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                controller.onBoardingData[index],
                fit: BoxFit.cover,
              ));
            },
            options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  controller.currentPage.value = index;
                  //print(controller.currentPage.value);
                },
                autoPlay: true,
                height: 400,
                viewportFraction: 0.7,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom),
          ),
          SizedBox(height: getVerticalSize(50)),
          Obx(() => Text(
                controller.currentPage.value == 2
                    ? "Premium"
                    : controller.currentPage.value == 1
                        ? "Matches"
                        : "Algorithm",
                style: TextStyle(
                    fontSize: getFontSize(25),
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.w700),
              )),
          SizedBox(
            height: getVerticalSize(20),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getHorizontalSize(20), right: getHorizontalSize(20)),
            child: Obx(() => Text(
                  controller.currentPage.value == 2
                      ? StringConstants.signUpToday
                      : controller.currentPage.value == 1
                          ? StringConstants.weMatch
                          : StringConstants.userGoing,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: getFontSize(15), fontWeight: FontWeight.w400),
                )),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: getVerticalSize(50)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.onBoardingData.length,
                    (index) => buildDot(index: index),
                  ))),
          AppElevatedButton(
              buttonName: StringConstants.createAn,
              onPressed: () => Get.toNamed(AppRoutes.signupscreen)),
          SizedBox(height: getVerticalSize(10)),
          Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Already have an account? ",
              style: TextStyle(fontSize: getFontSize(15)),
            ),
            TextButton(
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                onPressed: () => Get.toNamed(AppRoutes.signupscreen),
                child: Text("Sign In",
                    style: TextStyle(
                        fontSize: getFontSize(15),
                        color: ColorConstant.primaryColor,
                        fontWeight: FontWeight.bold)))
          ]))
        ])));
  }

  Obx buildDot({int? index}) {
    return Obx(() => controller.currentPage.value == index
        ? Container(
            margin: EdgeInsets.only(right: 5),
            height: getHorizontalSize(12),
            width: getHorizontalSize(12),
            decoration: BoxDecoration(
              color: ColorConstant.backgroundColor,
              /* border: Border.all(color: ColorConstant.dotRed, width: 1.0),
                borderRadius: BorderRadius.circular(10),*/
            ),
            child: Padding(
                padding: EdgeInsets.all(1.5),
                child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstant.dotRed,
                        borderRadius: BorderRadius.circular(10)))))
        : Container(
            margin: EdgeInsets.only(right: 5),
            height: getHorizontalSize(8),
            width: getHorizontalSize(8),
            decoration: BoxDecoration(
                color: ColorConstant.dotGrey,
                borderRadius: BorderRadius.circular(10))));
  }
}
