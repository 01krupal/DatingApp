import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:dating_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tcard/tcard.dart';

import '../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../Custom Widgets/app_ElevatedButton .dart';
import '../../Utils/HelperFiles/math_utils.dart';
import 'controller/main_screen_controller.dart';

class MainScreen extends GetWidget<MainScreenController> {
  MainScreen({super.key});

  MainScreenController mainScreencontroller = Get.put(MainScreenController());

  TCardController _controller = TCardController();

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getVerticalSize(100)),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.notificationScreen);
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
                Column(
                  children: [
                    Text(
                      StringConstants.discover,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 25),
                    ),
                    Text(
                      StringConstants.chicago,
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 15),
                    )
                  ],
                ),
                InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor: ColorConstant.transPatent,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                                height: getVerticalSize(550),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    color: ColorConstant.backgroundColor,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: getVerticalSize(18)),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: getHorizontalSize(40)),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(140)),
                                                child: Text(
                                                    StringConstants.filter,
                                                    style: TextStyle(
                                                        fontSize:
                                                        getFontSize(28),
                                                        fontWeight:
                                                        FontWeight.w800)),
                                              ),
                                              Text(StringConstants.clear,
                                                  style: TextStyle(
                                                      fontSize:
                                                      getFontSize(18),
                                                      color: ColorConstant
                                                          .primaryColor,
                                                      fontWeight:
                                                      FontWeight.w700)),
                                            ]),
                                      ),
                                      SizedBox(height: getVerticalSize(15)),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: getHorizontalSize(40)),
                                        child: Text(StringConstants.interestedIn,
                                            style: TextStyle(
                                                fontSize: getFontSize(22),
                                                fontWeight: FontWeight.w700)),
                                      ),
                                      SizedBox(height: getVerticalSize(22)),
                                      Obx(() =>
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: getHorizontalSize(
                                                    40)),
                                            child: Row(
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        mainScreencontroller
                                                            .selectedBTN(0);
                                                      },
                                                      child: Container(
                                                          height: getVerticalSize(
                                                              58),
                                                          width: getHorizontalSize(
                                                              115),
                                                          decoration: BoxDecoration(
                                                              color: mainScreencontroller
                                                                  .selectedBTN
                                                                  .value == 0
                                                                  ? ColorConstant
                                                                  .primaryColor
                                                                  : ColorConstant
                                                                  .backgroundColor,
                                                              borderRadius: const BorderRadius
                                                                  .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                      15),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                      15)),
                                                              border: Border.all(
                                                                  color: mainScreencontroller
                                                                      .selectedBTN
                                                                      .value == 0
                                                                      ? ColorConstant
                                                                      .primaryColor
                                                                      : ColorConstant
                                                                      .dotGrey)),
                                                          child: Center(
                                                              child: Text(
                                                                  StringConstants
                                                                      .girls,
                                                                  style: TextStyle(
                                                                      fontWeight: FontWeight
                                                                          .w400,
                                                                      fontSize: getFontSize(
                                                                          15),
                                                                      color: mainScreencontroller
                                                                          .selectedBTN
                                                                          .value ==
                                                                          0
                                                                          ? ColorConstant
                                                                          .backgroundColor
                                                                          : ColorConstant
                                                                          .blackC))))),
                                                  InkWell(
                                                      onTap: () {
                                                        mainScreencontroller
                                                            .selectedBTN(1);
                                                      },
                                                      child: Container(
                                                          height: getVerticalSize(
                                                              58),
                                                          width: getHorizontalSize(
                                                              115),
                                                          decoration: BoxDecoration(
                                                              color: mainScreencontroller
                                                                  .selectedBTN
                                                                  .value == 1
                                                                  ? ColorConstant
                                                                  .primaryColor
                                                                  : ColorConstant
                                                                  .backgroundColor,
                                                              border: Border.all(
                                                                  color: mainScreencontroller
                                                                      .selectedBTN
                                                                      .value == 1
                                                                      ? ColorConstant
                                                                      .primaryColor
                                                                      : ColorConstant
                                                                      .dotGrey)),
                                                          child: Center(
                                                              child: Text(
                                                                  StringConstants
                                                                      .boys,
                                                                  style: TextStyle(
                                                                      fontWeight: FontWeight
                                                                          .w400,
                                                                      fontSize: getFontSize(
                                                                          15),
                                                                      color: mainScreencontroller
                                                                          .selectedBTN
                                                                          .value ==
                                                                          1
                                                                          ? ColorConstant
                                                                          .backgroundColor
                                                                          : ColorConstant
                                                                          .blackC))))),
                                                  InkWell(
                                                      onTap: () {
                                                        mainScreencontroller.selectedBTN(2);
                                                      },
                                                      child: Container(
                                                          height: getVerticalSize(
                                                              58),
                                                          width: getHorizontalSize(
                                                              115),
                                                          decoration: BoxDecoration(
                                                              color: mainScreencontroller
                                                                  .selectedBTN
                                                                  .value == 2
                                                                  ? ColorConstant
                                                                  .primaryColor
                                                                  : ColorConstant
                                                                  .backgroundColor,
                                                              borderRadius: const BorderRadius
                                                                  .only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                      15),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                      15)),
                                                              border: Border.all(
                                                                  color: mainScreencontroller
                                                                      .selectedBTN
                                                                      .value == 2
                                                                      ? ColorConstant
                                                                      .primaryColor
                                                                      : ColorConstant
                                                                      .dotGrey)),
                                                          child: Center(
                                                              child: Text(
                                                                  StringConstants
                                                                      .both,
                                                                  style: TextStyle(
                                                                      fontWeight: FontWeight
                                                                          .w400,
                                                                      fontSize: getFontSize(
                                                                          15),
                                                                      color: mainScreencontroller
                                                                          .selectedBTN
                                                                          .value ==
                                                                          2
                                                                          ? ColorConstant
                                                                          .backgroundColor
                                                                          : ColorConstant
                                                                          .blackC)))))
                                                ]),
                                          )),
                                      SizedBox(height: getVerticalSize(25)),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: getHorizontalSize(40)),
                                          child: TextFormField(
                                              decoration: InputDecoration(
                                                  suffix: Image.asset(
                                                      AppImages.whiteIcon,
                                                      width: getHorizontalSize(
                                                          24)),
                                                  hintText: StringConstants
                                                      .chicagoUSA,
                                                  labelText: StringConstants
                                                      .location,
                                                  labelStyle: const TextStyle(
                                                      color: Colors.grey),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: getHorizontalSize(
                                                              1)),
                                                      borderRadius: BorderRadius
                                                          .circular(15)),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: getHorizontalSize(
                                                              1)),
                                                      borderRadius: BorderRadius
                                                          .circular(15)),
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(15))))
                                      ),
                                      SizedBox(height: getVerticalSize(20)),
                                      Obx(() =>
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(40),
                                                right: getHorizontalSize(25),
                                                bottom: getHorizontalSize(10)),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .end,
                                                children: [
                                                  Text(
                                                      StringConstants.distance,
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w700,
                                                          fontSize: getFontSize(
                                                              15))),
                                                  const Spacer(),
                                                  Text('${mainScreencontroller
                                                      .valueOfSlider}KM',
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.w400,
                                                          fontSize:
                                                          getFontSize(12))),
                                                  SizedBox(
                                                      width: getHorizontalSize(
                                                          20))
                                                ]),
                                          )),
                                      Obx(() =>
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(40),
                                                right: getHorizontalSize(25),
                                                bottom: getVerticalSize(10)),
                                            child: Slider(
                                                value: mainScreencontroller
                                                    .valueOfSlider.value,
                                                activeColor: ColorConstant
                                                    .primaryColor,
                                                min: 0,
                                                max: 100,
                                                onChanged: (newValue) {
                                                  (controller.valueOfSlider
                                                      .value = newValue);
                                                }),
                                          )),
                                      Obx(() =>
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(40),
                                                right: getHorizontalSize(25),
                                                bottom: getVerticalSize(10)),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  StringConstants.age,
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w700,
                                                      fontSize:
                                                      getFontSize(15)),
                                                ),
                                                const Spacer(),
                                                Text(
                                                  '${mainScreencontroller
                                                      .valueofRangeSlider}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize:
                                                      getFontSize(12)),
                                                ),
                                                SizedBox(
                                                  width: getHorizontalSize(20),
                                                ),
                                              ],
                                            ),
                                          )),
                                      Obx(() =>
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(40),
                                                right: getHorizontalSize(25),
                                                bottom: getVerticalSize(10)),
                                            child: RangeSlider(
                                              values: mainScreencontroller
                                                  .valueofRangeSlider.value,
                                              onChanged: (newValues) {
                                                mainScreencontroller
                                                    .updateRangeValues(newValues);
                                              },
                                              min: 0,
                                              max: 100,
                                              activeColor: ColorConstant
                                                  .primaryColor,
                                              labels: RangeLabels(
                                                mainScreencontroller.valueofRangeSlider
                                                    .value.start.round()
                                                    .toString(),
                                                mainScreencontroller.valueofRangeSlider
                                                    .value.end.round().toString(),
                                              ),
                                            ),
                                          )),
                                      AppElevatedButton(
                                          buttonName:
                                          StringConstants.continueBtn,
                                          onPressed: () {
                                            Get.back();
                                          })
                                    ]));
                          }
                      );
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
                          AppImages.filtter,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(height: getVerticalSize(40)),
          Center(
            child: TCard(
              lockYAxis: true,
              cards: mainScreencontroller.MainData,
              size: Size(360, 480),
              controller: _controller,
              onForward: (index, info) {
                mainScreencontroller.MainData;
                print(index);
              },
              onBack: (index, info) {
                mainScreencontroller.MainData;
                print(index);
              },
              slideSpeed: 20,
              onEnd: () {
                mainScreencontroller.MainData;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getVerticalSize(9),left: getHorizontalSize(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  _controller.forward(direction: SwipDirection.Left);
                }, child: Image.asset(
                    AppImages.dislike, width: getHorizontalSize(140))),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.matchScreen);
                    //_controller.reset();
                  },
                  child: Image.asset(
                      AppImages.splashImagePath, width: getHorizontalSize(138)),
                ),
                InkWell(
                    onTap: () {
                      _controller.forward(direction: SwipDirection.Right);
                    },
                    child: Image.asset(
                        AppImages.star, width: getHorizontalSize(140)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
