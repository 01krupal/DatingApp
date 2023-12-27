import 'package:get/get.dart';
import '../controller/onbording_screen_controller.dart';

class OnBoardingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingScreenController());
  }
}
