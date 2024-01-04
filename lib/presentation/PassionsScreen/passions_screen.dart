import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../App Configurations/ConstantsFiles/string_constants.dart';
import '../../Custom Widgets/app_ElevatedButton .dart';
import '../../routes/app_routes.dart';
import 'controller/passions_screen_controller.dart';

class PassionScreen extends GetWidget<PassionScreenController> {
  PassionScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
                left: getHorizontalSize(40),
                right: getHorizontalSize(40),
                top: getVerticalSize(80)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: getVerticalSize(55),
                        width: getHorizontalSize(53),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Image.asset(
                            AppImages.right,
                          ),
                        ),
                      )),
                  Text(StringConstants.skiP,
                      style: TextStyle(
                          color: ColorConstant.primaryColor,
                          fontSize: getFontSize(18),
                          fontWeight: FontWeight.w700))
                ]),
          ),
          SizedBox(height: getVerticalSize(60)),
          Padding(
            padding: EdgeInsets.only(left: getHorizontalSize(40)),
            child: Text(StringConstants.yourInterests,
                style: TextStyle(
                    fontSize: getFontSize(38), fontWeight: FontWeight.w900)),
          ),
          SizedBox(height: getVerticalSize(10)),
          Padding(
            padding: EdgeInsets.only(
                left: getHorizontalSize(40), right: getHorizontalSize(40)),
            child: Text(StringConstants.selectAfew),
          ),
          SizedBox(height: getHorizontalSize(50)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: Wrap(
                spacing: 25,
                runSpacing: 10,
                children: List.generate(
                    controller.interestName.length,
                    (index) => Obx(() => InkWell(
                        onTap: () =>
                            controller.toggleSelection(index),
                        child: Container(
                            height: getVerticalSize(55),
                            width: getHorizontalSize(150),
                            decoration: BoxDecoration(
                                    color: controller.isSelect[index]
                                    ? ColorConstant.primaryColor
                                    : ColorConstant.backgroundColor,
                                border: Border.all(
                                  width: 1,
                                  color: controller.isSelect[index]
                                      ? ColorConstant.primaryColor
                                      : ColorConstant.dotGrey,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: getHorizontalSize(10)),
                                child: Row(children: [
                                  Image.asset(
                                      controller
                                          .interestName[index]["interstImage"],
                                      width: getHorizontalSize(20),
                                      color: controller
                                              .isSelect[index]
                                          ? ColorConstant.backgroundColor
                                          : Colors.red),
                                  SizedBox(
                                    width: getHorizontalSize(10),
                                  ),
                                  Text(
                                      controller
                                          .interestName[index]["interstText"],
                                      style: TextStyle(
                                          fontSize: getFontSize(15),
                                          color: controller
                                                  .isSelect[index]
                                              ? ColorConstant.backgroundColor
                                              : ColorConstant.blackC))
                                ]))))))),
          ),
          SizedBox(height: getHorizontalSize(55)),
          AppElevatedButton(
              buttonName: StringConstants.continueBtn,
              onPressed: () {
                Get.toNamed(AppRoutes.friendScreen);
              })
        ])));
  }
}
