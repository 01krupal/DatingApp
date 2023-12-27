import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../../Utils/HelperFiles/math_utils.dart';

class OnBoardingScreenController extends GetxController {

RxInt currentPage = 0.obs;
PageController pageController =PageController(initialPage: 0);
List<Widget> onBoardingData = [
  Container(
      height: getVerticalSize(500),
      width: getHorizontalSize(275),
      decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.onBordingImage1),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15))),
  Container(
      height: getVerticalSize(500),
      width: getHorizontalSize(275),
      decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.onBordingImage2),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15))),
  Container(
      height: getVerticalSize(500),
      width: getHorizontalSize(275),
      decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.onBordingImage3),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)))
];


  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onInit() {
    super.onInit();
  }
}


