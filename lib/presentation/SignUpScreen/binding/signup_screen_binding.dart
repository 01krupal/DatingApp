import 'package:dating_app/presentation/SignUpScreen/controller/signup_screen_controller.dart';
import 'package:get/get.dart';

class SignUpScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SignUpScreenController());
  }
}