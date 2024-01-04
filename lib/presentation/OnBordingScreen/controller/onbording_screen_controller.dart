import 'package:dating_app/App%20Configurations/ConstantsFiles/image_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class OnBoardingScreenController extends GetxController {

RxInt currentPage = 0.obs;


PageController pageController = PageController(initialPage: 0);


List<String> onBoardingData = [
  AppImages.onBordingImage1,
  AppImages.onBordingImage2,
  AppImages.onBordingImage3
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


