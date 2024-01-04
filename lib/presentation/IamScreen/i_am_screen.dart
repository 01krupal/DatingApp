import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/image_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:dating_app/Custom%20Widgets/app_ElevatedButton%20.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:dating_app/presentation/IamScreen/controller/iam_screen_controller.dart';
import 'package:dating_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IamScreen extends GetWidget<IamScreenController> {
  const IamScreen({super.key});

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
                              border: Border.all(color: Colors.grey)),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Image.asset(
                              AppImages.right,
                            ),
                          ),
                        )),
                    TextButton(
                      style: const ButtonStyle(
                          overlayColor:
                              MaterialStatePropertyAll(Colors.transparent)),
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
            Padding(
              padding: EdgeInsets.only(left: getHorizontalSize(40)),
              child: Text(StringConstants.iAm,
                  style: TextStyle(
                      fontSize: getFontSize(38), fontWeight: FontWeight.w900)),
            ),
            SizedBox(height: getVerticalSize(100)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
              child: InkWell(
                  onTap: () {
                    controller.selectBTN(0);
                  },
                  child: Obx(
                    () => Container(
                        height: getVerticalSize(62),
                        decoration: BoxDecoration(
                            color: controller.selectBTN.value == 0
                                ? ColorConstant.primaryColor
                                : ColorConstant.backgroundColor,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: controller.selectBTN.value == 0
                                  ? ColorConstant.primaryColor
                                  : ColorConstant.dotGrey,
                            )),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(20)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(StringConstants.woman,
                                      style: TextStyle(
                                          color: controller.selectBTN.value == 0
                                              ? ColorConstant.backgroundColor
                                              : ColorConstant.blackC,
                                          fontWeight: FontWeight.w400,
                                          fontSize: getFontSize(18))),
                                  Icon(Icons.check,
                                      color: controller.selectBTN.value == 0
                                          ? ColorConstant.backgroundColor
                                          : ColorConstant.dotGrey)
                                ]))),
                  )),
            ),
            SizedBox(height: getVerticalSize(10)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
              child: InkWell(
                  onTap: () {
                    controller.selectBTN(1);
                  },
                  child: Obx(
                    () => Container(
                        height: getVerticalSize(62),
                        decoration: BoxDecoration(
                            color: controller.selectBTN.value == 1
                                ? ColorConstant.primaryColor
                                : ColorConstant.backgroundColor,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: controller.selectBTN.value == 1
                                  ? ColorConstant.primaryColor
                                  : ColorConstant.dotGrey,
                            )),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(20)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(StringConstants.man,
                                      style: TextStyle(
                                          color: controller.selectBTN.value == 1
                                              ? ColorConstant.backgroundColor
                                              : ColorConstant.blackC,
                                          fontWeight: FontWeight.w400,
                                          fontSize: getFontSize(18))),
                                  Icon(Icons.check,
                                      color: controller.selectBTN.value == 1
                                          ? ColorConstant.backgroundColor
                                          : ColorConstant.dotGrey)
                                ]))),
                  )),
            ),
            SizedBox(height: getVerticalSize(10)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
              child: InkWell(
                  onTap: () {
                    controller.selectBTN(2);
                  },
                  child: Obx(
                    () => Container(
                        height: getVerticalSize(62),
                        decoration: BoxDecoration(
                            color: controller.selectBTN.value == 2
                                ? ColorConstant.primaryColor
                                : ColorConstant.backgroundColor,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: controller.selectBTN.value == 2
                                    ? ColorConstant.primaryColor
                                    : ColorConstant.dotGrey)),
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(20)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(StringConstants.chooseAn,
                                      style: TextStyle(
                                          color: controller.selectBTN.value == 2
                                              ? ColorConstant.backgroundColor
                                              : ColorConstant.blackC,
                                          fontWeight: FontWeight.w400,
                                          fontSize: getFontSize(18))),
                                  Icon(Icons.check,
                                      color: controller.selectBTN.value == 2
                                          ? ColorConstant.backgroundColor
                                          : ColorConstant.dotGrey)
                                ]))),
                  )),
            ),
            SizedBox(height: getVerticalSize(263)),
            AppElevatedButton(
                buttonName: StringConstants.continueBtn,
                onPressed: () {
                  Get.toNamed(AppRoutes.passionScreen);
                })
          ]),
        ));
  }
}
