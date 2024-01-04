import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class SplashScreenController extends GetxController {

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onInit() {
    changeRoute();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
  Future changeRoute() async {
    Future.delayed(Duration(milliseconds: 2000), () {
      Get.offAllNamed(AppRoutes.onbordingscreen);
    });
  }
}
