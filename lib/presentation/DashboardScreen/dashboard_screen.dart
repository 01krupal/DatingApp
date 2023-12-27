import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../App Configurations/ConstantsFiles/color_constants.dart';
import '../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../Utils/HelperFiles/math_utils.dart';
import 'controller/dashboard_screen_controller.dart';

class DashboardScreen extends GetWidget<DashboardScreenController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.pages[controller.currentIndex.value]),
        bottomNavigationBar: Container(
          height: getVerticalSize(60),
          width: double.infinity,
          decoration: BoxDecoration(color: ColorConstant.navigationbar),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child:  Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    controller.currentIndex.value = 0;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        controller.currentIndex.value == 0
                            ? AppImages.redcardsIcon
                            : AppImages.cards,
                        width: getHorizontalSize(25),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.currentIndex.value = 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        controller.currentIndex.value == 1
                            ? AppImages.redindicatorIcon
                            :AppImages.like1,
                        width: getHorizontalSize(25),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.currentIndex.value = 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset( controller.currentIndex.value == 2
                          ? AppImages.redmessageIcon
                          : AppImages.massage,
                        width: getHorizontalSize(25),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => controller.currentIndex.value = 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.people1,
                        color: controller.currentIndex.value==3?ColorConstant.primaryColor:Colors.grey,
                        width: getHorizontalSize(25),
                      )
                    ],
                  ),
                ),
              ],
            ),)
          ),
        ));
  }
}
