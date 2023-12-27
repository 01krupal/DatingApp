import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../App Configurations/ConstantsFiles/color_constants.dart';
import '../../App Configurations/ConstantsFiles/image_constants.dart';
import 'controller/mainprofile_screen_controller.dart';

class MainProfileScreen extends GetWidget<MainProfileScreenController> {
  MainProfileScreen({super.key});

  final MainProfileScreenController controller = Get.put(MainProfileScreenController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            AppImages.mainPic,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: getVerticalSize(460),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: ColorConstant.backgroundColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Padding(
                padding: EdgeInsets.only(
                    top: getVerticalSize(50),
                    left: getHorizontalSize(40),
                    right: getHorizontalSize(40)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(StringConstants.jessicaparker,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: getFontSize(24))),
                              Text(
                                StringConstants.Proffesional,
                                style: TextStyle(
                                    fontSize: getFontSize(16),
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Container(
                            height: getVerticalSize(52),
                            width: getHorizontalSize(52),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Image.asset(
                                AppImages.send,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getVerticalSize(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(StringConstants.location,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: getFontSize(18))),
                              Text(StringConstants.chicagoIL,
                                  style: TextStyle(
                                      fontSize: getFontSize(16),
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                          Container(
                            height: getVerticalSize(38),
                            width: getHorizontalSize(65),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImages.localTwo,
                                  ),
                                  SizedBox(
                                    width: getHorizontalSize(1),
                                  ),
                                  Text(
                                    StringConstants.km,
                                    style: TextStyle(
                                        fontSize: getFontSize(12),
                                        fontWeight: FontWeight.w700,
                                        color: ColorConstant.primaryColor),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getVerticalSize(20)),
                      Text(StringConstants.about,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: getFontSize(18))),
                      SizedBox(height: getVerticalSize(10)),
                      Text(
                        StringConstants.myName,
                        style: TextStyle(
                            fontSize: getFontSize(16),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Text(StringConstants.read,
                          style: TextStyle(
                              color: ColorConstant.primaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: getFontSize(16))),
                      SizedBox(height: getVerticalSize(30)),
                      Text(StringConstants.interests,
                          style: TextStyle(
                              fontSize: getFontSize(18),
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: getVerticalSize(10)),
                      Wrap(spacing: 10, runSpacing: 10,
                          children: List.generate(controller.mainProfile.length , (index) => Obx(
                                () => InkWell(
                              onTap: () {controller.toggleSelection(index);},
                              child: Container(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(100),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: controller.isSelected[index] ? ColorConstant.primaryColor : ColorConstant.dotGrey,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(AppImages.doneAll,color:controller.isSelected[index] ? ColorConstant.primaryColor : ColorConstant.backgroundColor,width: getHorizontalSize(15),
                                    ),
                                    SizedBox(
                                      width: getHorizontalSize(1),
                                    ),
                                    Text(controller.mainProfile[index]["InterestText"],style: TextStyle(color: controller.isSelected[index] ? ColorConstant.primaryColor : ColorConstant.blackC)),
                                  ])))))),
                      SizedBox(height: getVerticalSize(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(StringConstants.gallery,
                              style: TextStyle(fontSize: getFontSize(18),fontWeight: FontWeight.w700)),
                          Text(StringConstants.seeAll,
                              style: TextStyle(
                                  fontSize: getFontSize(14),color: ColorConstant.primaryColor,fontWeight: FontWeight.w700)),
                        ],
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Row(
                     children: [
                       Image.asset(AppImages.profilePic1,width: getHorizontalSize(167),),
                       SizedBox(width: getHorizontalSize(10),),
                       Image.asset(AppImages.profilePic2,width: getHorizontalSize(167),),
                     ],
                   ),
                      SizedBox(height: getVerticalSize(10)),
                      Row(
                        children: [
                          Image.asset(AppImages.profilePic3,width: getHorizontalSize(108),),
                          SizedBox(width: getHorizontalSize(10),),
                          Image.asset(AppImages.profilePic4,width: getHorizontalSize(108),),
                          SizedBox(width: getHorizontalSize(10),),
                          Image.asset(AppImages.profilePic5,width: getHorizontalSize(108),),

                        ],
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Row(
                        children: [
                          Image.asset(AppImages.profilePic6,width: getHorizontalSize(167),),
                          SizedBox(width: getHorizontalSize(10),),
                          Image.asset(AppImages.profilePic7,width: getHorizontalSize(167),),
                        ],
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Row(
                        children: [
                          Image.asset(AppImages.profilePic8,width: getHorizontalSize(108),),
                          SizedBox(width: getHorizontalSize(10),),
                          Image.asset(AppImages.profilePic9,width: getHorizontalSize(108),),
                          SizedBox(width: getHorizontalSize(10),),
                          Image.asset(AppImages.profilePic10,width: getHorizontalSize(108),),

                        ],
                      )


                   /* StaggeredGrid.count(
                      crossAxisCount: controller.mainProfile.length,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      children: [
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 3,
                          child: Image.asset(
                              controller.mainProfile[0]["gallery"])),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 3,
                          child: Image.asset(
                              controller.mainProfile[1]["gallery"])),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 3,
                          child: Image.asset(
                              controller.mainProfile[2]["gallery"])),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: Image.asset(
                              controller.mainProfile[3]["gallery"])),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1,
                          child: Image.asset(
                              controller.mainProfile[4]["gallery"])),
                    ])*/

                    ]))))),
          Padding(
            padding: EdgeInsets.only(
                top: getVerticalSize(375), ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.dislike, height: getVerticalSize(150)),
                Image.asset(
                  AppImages.splashImagePath,
                  height: getVerticalSize(130),
                ),
                Image.asset(AppImages.star, height: getVerticalSize(150))
              ],
            ),
          ),
        ],
      ),
    );
  }
}





