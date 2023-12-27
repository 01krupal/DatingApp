import 'package:dating_app/presentation/PassionsScreen/controller/passions_screen_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PassionScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PassionScreenController());
  }
}