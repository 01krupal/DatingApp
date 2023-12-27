import 'package:get/get.dart';

import '../controller/matches_screen_controller.dart';

class MatchesScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MatchesScreenController());
  }

}