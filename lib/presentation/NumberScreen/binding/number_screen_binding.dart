import 'package:dating_app/presentation/NumberScreen/controller/number_screen_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';



class NumberScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NumberScreenController());
  }
}