import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tcard/tcard.dart';

import '../../../App Configurations/ConstantsFiles/image_constants.dart';

class MainScreenController extends GetxController{


  RxDouble valueOfSlider = 0.0.obs;
  Rx<RangeValues> valueofRangeSlider = RangeValues(0, 100).obs;
  var selectedBTN = 0.obs;


  void updateRangeValues(RangeValues newValues) {
    valueofRangeSlider.value = newValues;
  }
  void Onchange (int index){

    selectedBTN.value = index;
    valueOfSlider.value;

  }

  List<Widget> MainData = [

    Container(
        height: getVerticalSize(300),
        width: getHorizontalSize(250),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic4),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.jessicaparker,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.professionalModel,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic6),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.bredJackson,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.photograph,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic1),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.bredJackson,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.photograph,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic2),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.camilaShow,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.marketer,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.onBordingImage1),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.jessicaparker,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.professionalModel,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.onBordingImage2),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.camilaShow,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.marketer,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic9),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.bredJackson,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.photograph,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic8),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.jessicaparker,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.professionalModel,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.onBordingImage3),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.bredJackson,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.photograph,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.main4),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.camilaShow,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.marketer,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.mainPic),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.jessicaparker,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.professionalModel,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic5),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.camilaShow,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.marketer,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic7),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.bredJackson,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.photograph,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic3),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.bredJackson,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.photograph,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.main),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.jessicaparker,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.professionalModel,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.main2),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.bredJackson,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.photograph,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
    Container(
        height: getVerticalSize(280),
        width: getHorizontalSize(300),
        decoration:BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.profilePic10),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getHorizontalSize(20),top: getVerticalSize(20)),
                child: Container(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(65),
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.localTwo,color: ColorConstant.backgroundColor,
                              ),
                              SizedBox(
                                width: getHorizontalSize(1),
                              ),
                              Text(
                                StringConstants.km,
                                style: TextStyle(
                                    fontSize: getFontSize(12),
                                    fontWeight: FontWeight.w700,
                                    color: ColorConstant.backgroundColor),
                              )]))),
              ),
              Spacer(),
              Container(
                  height: getVerticalSize(65),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),vertical: getVerticalSize(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringConstants.jessicaparker,style: TextStyle(fontWeight: FontWeight.w700,color: ColorConstant.backgroundColor,fontSize: getFontSize(25))),
                            Text(StringConstants.professionalModel,style: TextStyle(fontWeight: FontWeight.w400,color: ColorConstant.backgroundColor,fontSize: getFontSize(15))),
                          ]))),
            ])),
  ];

}