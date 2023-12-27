import 'dart:ui';

import 'package:dating_app/presentation/MatchesScreen/controller/matches_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../App Configurations/ConstantsFiles/color_constants.dart';
import '../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../App Configurations/ConstantsFiles/string_constants.dart';
import '../../Utils/HelperFiles/math_utils.dart';

class MatchesScreen extends GetWidget<MatchesScreenController> {
  MatchesScreen({super.key});

  MatchesScreenController matchesScreencontroller = Get.put(MatchesScreenController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getHorizontalSize(40),
                vertical: getVerticalSize(80)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringConstants.matches,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: getFontSize(35)),
                    ),
                    Container(
                      height: getVerticalSize(55),
                      width: getHorizontalSize(53),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Image.asset(
                          AppImages.sort,
                        ),
                      ),
                    )                  ],
                ),
                SizedBox(height: getVerticalSize(20)),
                Text(StringConstants.thisIsAList,
                    style: TextStyle(fontSize: getFontSize(20))),
                SizedBox(height: getVerticalSize(30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Container(
                        height: getVerticalSize(1),
                        width: getHorizontalSize(140),
                        color: ColorConstant.dotGrey),
                    Spacer(),
                    Text(StringConstants.today,
                        style: TextStyle(
                            fontSize: getFontSize(18),
                            fontWeight: FontWeight.w400)),
                    Spacer(),
                    Container(
                        height: getVerticalSize(1),
                        width: getHorizontalSize(140),
                        color: ColorConstant.dotGrey),
                    Spacer(),
                  ],
                ),
                SizedBox(height: getVerticalSize(12)),
                Center(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(
                          matchesScreencontroller.matchesPerson.length,
                          (index) => Container(
                                height: getVerticalSize(230),
                                width: getHorizontalSize(155),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        matchesScreencontroller.matchesPerson[index]
                                            ["matchesImage"],
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(20)),
                                      child: Text(
                                        matchesScreencontroller.matchesPerson[index]
                                            ["matchesText"],
                                        style: TextStyle(
                                            fontSize: getFontSize(18),
                                            fontWeight: FontWeight.w700,
                                            color: ColorConstant.backgroundColor),
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(43),
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: Colors.black38,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) )),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(25)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                           Image.asset(AppImages.closesmall,width: getHorizontalSize(25),),
                                            Container(
                                              height: double.infinity,
                                              width: 1,
                                              color: Colors.white,
                                            ),
                                            Image.asset(AppImages.likesmall,width: getHorizontalSize(25))]
                                        ))
                                    )
                                  ]
                                ))),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
