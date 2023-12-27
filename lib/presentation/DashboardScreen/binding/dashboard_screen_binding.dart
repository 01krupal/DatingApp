import 'package:get/get.dart';

import '../controller/dashboard_screen_controller.dart';

class DashboardScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DashboardScreenController());
  }

}