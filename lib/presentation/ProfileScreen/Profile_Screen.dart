import 'dart:io';

import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/image_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:dating_app/Custom%20Widgets/app_ElevatedButton%20.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:dating_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:get/get.dart';

import 'controller/profile_screen_controller.dart';

class ProfileScreen extends GetWidget<ProfileScreenController> {
  ProfileScreen({super.key});

  @override
  void initState() {

    // Initialize the selected date when the screen is first loaded
    controller.updateSelectedDate(DateTime.now());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
                right: getHorizontalSize(40), top: getVerticalSize(80)),
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
          SizedBox(height: getVerticalSize(50)),
          Padding(
            padding: EdgeInsets.only(left: getHorizontalSize(40)),
            child: Text(StringConstants.proFile,
                style: TextStyle(
                    fontSize: getFontSize(38), fontWeight: FontWeight.w900)),
          ),
          SizedBox(height: getVerticalSize(100)),
          Center(
              child: InkWell(
                  onTap: () {
                    controller.getImage();
                  },
                  child: Obx(() => controller.imagePath.value.isNotEmpty
                      ? Container(
                          height: getVerticalSize(100),
                          width: getHorizontalSize(100),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: FileImage(
                                      File(controller.imagePath.value)),
                                  fit: BoxFit.cover)))
                      : Container(
                          height: getVerticalSize(110),
                          width: getHorizontalSize(100),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(AppImages.profileFace),
                                  fit: BoxFit.cover)))))),
          SizedBox(height: getVerticalSize(50)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: TextFormField(
                decoration: InputDecoration(
                    labelText: StringConstants.firstN,
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey, width: getHorizontalSize(2)),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey, width: getHorizontalSize(2)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)))),
          ),
          SizedBox(height: getVerticalSize(10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: TextFormField(
                decoration: InputDecoration(
                    labelText: StringConstants.lastN,
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey, width: getHorizontalSize(2)),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey, width: getHorizontalSize(2)),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)))),
          ),
          SizedBox(height: getVerticalSize(10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: // Define a controller to handle the state

// Inside your widget tree
                Container(
              height: getVerticalSize(62),
              decoration: BoxDecoration(
                color: ColorConstant.btnBackgrung,
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                onTap: () => Get.bottomSheet(
                  Container(
                    width: double.maxFinite,
                    height: getVerticalSize(450),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getHorizontalSize(40),
                            vertical: getVerticalSize(20),
                          ),
                          child: Calendar(
                            startOnMonday: true,
                            isExpanded: true,
                            selectedColor: ColorConstant.primaryColor,
                            datePickerType: DatePickerType.hidden,
                            todayColor: Colors.blue,
                            dayOfWeekStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.primaryColor,
                            ),
                            initialDate: controller.selectedDate.value ?? DateTime.now(),
                            onDateSelected: (DateTime selectedDate) {
                              // Update the selected date in the controller
                              controller.updateSelectedDate(selectedDate);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: getVerticalSize(50)),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: AppElevatedButton(
                              buttonName: StringConstants.save,
                              onPressed: () {
                                Get.back();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: getHorizontalSize(14)),
                  child: Row(
                    children: [
                      Image.asset(AppImages.calendarIcon,
                          width: getHorizontalSize(20)),
                      SizedBox(width: getHorizontalSize(10)),
                      Obx(() {
                        // Use Obx to automatically update the UI when the selected date changes
                        final selectedDate = controller.selectedDate.value;
                        return Text(
                          selectedDate != null
                              ? "Selected Date: ${selectedDate.toLocal()}"
                                  .split(' ')[0]
                              : StringConstants.chooseBirth,
                          style: TextStyle(
                            color: ColorConstant.primaryColor,
                            fontSize: getFontSize(15),
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: getVerticalSize(150)),
          AppElevatedButton(
              buttonName: StringConstants.continueBtn,
              onPressed: () {
                Get.toNamed(AppRoutes.iamScreen);
              })
        ])));
  }
}
