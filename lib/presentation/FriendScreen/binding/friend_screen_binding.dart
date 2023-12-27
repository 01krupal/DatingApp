import 'package:dating_app/presentation/FriendScreen/controller/friend_screen_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class FriendScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FriendScreenController());
  }
}