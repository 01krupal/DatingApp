import 'package:dating_app/presentation/MainProfileScreen/mainprofile_screen.dart';
import 'package:dating_app/presentation/MainScreen/main_screen.dart';
import 'package:dating_app/presentation/MatchesScreen/matches_screen.dart';
import 'package:dating_app/presentation/MessageScreen/message_screen.dart';
import 'package:get/get.dart';

class DashboardScreenController extends GetxController{

  RxInt currentIndex = 0.obs;

List pages = [
  MainScreen(),
  MatchesScreen(),
  MessageScreen(),
  MainProfileScreen()
];


void toggle (int index) {
  currentIndex.value = index;
}

}