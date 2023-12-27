import 'package:get/get.dart';

class IamScreenController extends GetxController{


 var selectBTN = 0.obs;

  void Onchange (int index){

    selectBTN.value = index;

  }

}