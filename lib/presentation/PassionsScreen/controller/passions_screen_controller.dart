import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../App Configurations/ConstantsFiles/image_constants.dart';

class PassionScreenController extends GetxController {
  RxList<bool> isSelect = <bool>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    isSelect.assignAll(List<bool>.generate(14, (index) => false));
    super.onInit();
  }

  void toggleSelection(int index) {
    isSelect[index] = !isSelect[index];
    update();
  }

  List interestName = [
    {
      "interstText": StringConstants.photography,
      "interstImage": AppImages.camera
    },
    {
      "interstText": StringConstants.shopping,
      "interstImage": AppImages.weixinmarket
    },
    {"interstText": StringConstants.karaoke, "interstImage": AppImages.voice},
    {"interstText": StringConstants.yoga, "interstImage": AppImages.viencharts},
    {"interstText": StringConstants.cooking, "interstImage": AppImages.noodles},
    {"interstText": StringConstants.tennis, "interstImage": AppImages.tennis},
    {"interstText": StringConstants.run, "interstImage": AppImages.sport},
    {"interstText": StringConstants.swimming, "interstImage": AppImages.ripple},
    {"interstText": StringConstants.art, "interstImage": AppImages.platte},
    {
      "interstText": StringConstants.traveling,
      "interstImage": AppImages.outdoor
    },
    {
      "interstText": StringConstants.extreme,
      "interstImage": AppImages.parachute
    },
    {"interstText": StringConstants.music, "interstImage": AppImages.music},
    {"interstText": StringConstants.drink, "interstImage": AppImages.gobleFull},
    {
      "interstText": StringConstants.videoGame,
      "interstImage": AppImages.gameHandle
    },
  ];
}
