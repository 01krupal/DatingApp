import 'package:dating_app/presentation/FriendScreen/binding/friend_screen_binding.dart';
import 'package:dating_app/presentation/FriendScreen/friend_screen.dart';
import 'package:dating_app/presentation/IamScreen/binding/iam_screen_binding.dart';
import 'package:dating_app/presentation/MainScreen/binding/main_screen_binding.dart';
import 'package:dating_app/presentation/MainScreen/main_screen.dart';
import 'package:dating_app/presentation/MatchesScreen/binding/matches_screen_binding.dart';
import 'package:dating_app/presentation/MatchesScreen/matches_screen.dart';
import 'package:dating_app/presentation/MessageScreen/binding/message_screen_binding.dart';
import 'package:dating_app/presentation/NotificationScreen/binding/notification_screen_binding.dart';
import 'package:dating_app/presentation/NotificationScreen/notification_screen.dart';
import 'package:dating_app/presentation/NumberScreen/Number_screen.dart';
import 'package:dating_app/presentation/NumberScreen/binding/number_screen_binding.dart';
import 'package:dating_app/presentation/OnBordingScreen/binding/onbording_screen_binding.dart';
import 'package:dating_app/presentation/PassionsScreen/passions_screen.dart';
import 'package:dating_app/presentation/ProfileScreen/Profile_Screen.dart';
import 'package:dating_app/presentation/ProfileScreen/binding/profile_screen_binding.dart';
import 'package:dating_app/presentation/SignUpScreen/SignUp_screen.dart';
import 'package:dating_app/presentation/SignUpScreen/binding/signup_screen_binding.dart';
import 'package:get/get.dart';

import '../presentation/CodeScreen/Code_Screen.dart';
import '../presentation/CodeScreen/binding/code_screen_binding.dart';
import '../presentation/DashboardScreen/binding/dashboard_screen_binding.dart';
import '../presentation/DashboardScreen/dashboard_screen.dart';
import '../presentation/IamScreen/i_am_screen.dart';
import '../presentation/MatchScreen/binding/match_screen_binding.dart';
import '../presentation/MatchScreen/match_screen.dart';
import '../presentation/OnBordingScreen/OnBording_screen.dart';
import '../presentation/PassionsScreen/binding/passions_screen_binding.dart';
import '../presentation/SplashScreen/Splash_screen.dart';
import '../presentation/SplashScreen/binding/splash_screen_binding.dart';

class AppRoutes {
  /// Splash Screen
  static String splashScreen = '/splash_screen';
  static String onbordingscreen = '/onbording_screen';
  static String signupscreen = '/signup_screen';
  static String numberScreen = '/number_screen';
  static String codeScreen = '/code_screen';
  static String profileScreen = '/profile_screen';
  static String iamScreen = '/iam_screen';
  static String passionScreen = '/passions_screen';
  static String friendScreen = '/friend_screen';
  static String notificationScreen = '/notification_screen';
  static String dashboardScreen = '/dashboard_screen';
  static String mainScreen = '/main_screen';
  static String matchesScreen = '/matches_screen';
  static String messageScreen = '/message_screen';
  static String mainProfileScreen = '/mainprofile_screen';
  static String matchScreen = '/match_screen';





  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => SplashScreen(),
      bindings: [
        SplashScreenBinding(),
      ],
    ),

    GetPage(
      name: onbordingscreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () =>  OnBoardingScreen(),
      bindings: [
        OnBoardingScreenBinding(),
      ],
    ),
    GetPage(
      name: signupscreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => SignUpScreen(),
      bindings: [
        SignUpScreenBinding(),
      ],
    ),
    GetPage(
      name: numberScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => NumberScreen(),
      bindings: [
        NumberScreenBinding(),
      ],
    ),
    GetPage(
      name: codeScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => CodeScreen(),
      bindings: [
        CodeScreenBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => ProfileScreen(),
      bindings: [
        ProfileScreenBinding(),
      ],
    ),
    GetPage(
      name: iamScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => IamScreen(),
      bindings: [
        IamScreenBinding(),
      ],
    ),
    GetPage(
      name: passionScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => PassionScreen(),
      bindings: [
        PassionScreenBinding(),
      ],
    ),
    GetPage(
      name: friendScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => FriendScreen(),
      bindings: [
        FriendScreenBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => NotificationScreen(),
      bindings: [
        NotificationScreenBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => DashboardScreen(),
      bindings: [
        DashboardScreenBinding(),
      ],
    ),
    GetPage(
      name: mainScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => MainScreen(),
      bindings: [
        MainScreenBinding(),
      ],
    ),
    GetPage(
      name: matchScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => MatchScreen(),
      bindings: [
        MatchScreenBinding(),
      ],
    ),
    GetPage(
      name: matchesScreen,
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 400),
      page: () => MatchesScreen(),
      bindings: [
        MatchesScreenBinding(),
      ],
    ),
    GetPage(
      name: messageScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () =>MainScreen(),
      bindings: [
        MessageScreenBinding(),
      ],
    ),
    GetPage(
      name: mainProfileScreen,
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 400),
      page: () =>MainScreen(),
      bindings: [
        MessageScreenBinding(),
      ],
    ),


  ];
}
