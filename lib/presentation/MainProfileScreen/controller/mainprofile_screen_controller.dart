import 'package:dating_app/App%20Configurations/ConstantsFiles/image_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MainProfileScreenController extends GetxController {


  RxList<bool> isSelected = <bool>[].obs;
@override
  void onInit() {
    // TODO: implement onInit
  isSelected.assignAll(List<bool>.generate(5, (index) => false));
    super.onInit();
  }
  void toggleSelection(int index) {
    isSelected[index] = !isSelected[index];
    update();
  }

  List mainProfile = [
    {"InterestText": StringConstants.travelling,"gallery" : AppImages.profilePic1},
    {"InterestText": StringConstants.books,"gallery" : AppImages.profilePic2},
    {"InterestText": StringConstants.music,"gallery" : AppImages.profilePic3},
    {"InterestText": StringConstants.dancing,"gallery" : AppImages.profilePic4},
    {"InterestText": StringConstants.modeling,"gallery" : AppImages.profilePic5}
  ];
}
