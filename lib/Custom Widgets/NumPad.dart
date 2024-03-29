import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../App Configurations/ConstantsFiles/color_constants.dart';
import '../Utils/HelperFiles/math_utils.dart';
import '../theme/app_style.dart';

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class NumPad extends StatelessWidget {
  final String type;
  final TextEditingController controller;
  final Function delete;
  final Function onSubmit;

  const NumPad({
    Key? key,
    required this.delete,
    required this.onSubmit,
    required this.controller,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      /* decoration: */ /*BoxDecoration(
          color: ColorConstant.backgroundColor),*/ /*
         */ /* borderRadius: BorderRadius.only(
              topRight: Radius.circular(32), topLeft: Radius.circular(32))),*/
      child: Column(
        children: [
          SizedBox(height: getVerticalSize(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // implement the number keys (from 0 to 9) with the NumberButton widget
            // the NumberButton widget is defined in the bottom of this file
            children: [
              buttonWidget(
                  number: '1',
                  context: context,
                  controller: controller,
                  type: type),
              buttonWidget(
                  number: '2',
                  context: context,
                  controller: controller,
                  type: type),
              buttonWidget(
                  number: '3',
                  context: context,
                  controller: controller,
                  type: type),
            ],
          ),
          SizedBox(height: getVerticalSize(10)),
          /* Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20)),
            child: Divider(),
          ),*/
          SizedBox(height: getVerticalSize(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buttonWidget(
                  number: '4',
                  context: context,
                  controller: controller,
                  type: type),
              buttonWidget(
                  number: '5',
                  context: context,
                  controller: controller,
                  type: type),
              buttonWidget(
                  number: '6',
                  context: context,
                  controller: controller,
                  type: type),
            ],
          ),
          SizedBox(height: getVerticalSize(10)),
          /*Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20)),
            child: Divider(),
          ),*/
          SizedBox(height: getVerticalSize(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buttonWidget(
                  number: '7',
                  context: context,
                  controller: controller,
                  type: type),
              buttonWidget(
                  number: '8',
                  context: context,
                  controller: controller,
                  type: type),
              buttonWidget(
                  number: '9',
                  context: context,
                  controller: controller,
                  type: type),
            ],
          ),
          SizedBox(height: getVerticalSize(10)),
          /*Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20)),
            child: Divider(),
          ),*/
          SizedBox(height: getVerticalSize(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // this button is used to delete the last number

              buttonWidget(
                  number: '',
                  context: context,
                  controller: controller,
                  type: type),
              buttonWidget(
                  number: '0',
                  context: context,
                  controller: controller,
                  type: type),
              // this button is used to submit the entered value
              iconButtonWidget(context: context, function: () => delete()),
              /*Icon(
                Icons.backspace_outlined,
                color: ColorConstant.blackC,
                size: getFontSize(25),
              )*/

            ],
          ),
          const SizedBox(height: 10),

          // Padding(
          //   padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(20)),
          //   child: AppElevatedButton(
          //     buttonName: 'Next',
          //
          //     onPressed: () => onSubmit(),
          //   ),
          // )
        ],
      ),
    );
  }
}

// define NumberButton widget
// its shape is round

buttonWidget(
    {required String number,
    required BuildContext context,
    required String type,
    required TextEditingController controller}) {
  return InkWell(
    onTap: () {
      HapticFeedback.lightImpact();
      if (type == '-') {
        controller.text += number;
      } else {
        if (type == 'BIRTHDATE') {
          if (controller.text.length <= 9) {
            controller.text += number.toString();
            log('message ${controller.text}');
            if (controller.text.length == 2) {
              controller.text += '/';
            }
            log('message1 ${controller.text}');
            if (controller.text.length == 5) {
              controller.text += '/';
            }
            log('message2 ${controller.text}');
          }
        } else if (type == 'SNN') {
          if (controller.text.length <= 8) {
            controller.text += number.toString();
          }
        } else if (type == 'PHONE') {
          if (controller.text.length <= 11) {
            controller.text += number.toString();
            if (controller.text.length == 3) {
              controller.text += '-';
            }
            if (controller.text.length == 7) {
              controller.text += '-';
            }
            log('message5 ${controller.text}');
          }
        } else if (type == 'OTP') {
          if (controller.text.length <= 5) {
            controller.text += number;
          }
        } else if (type == 'OTP4') {
          if (controller.text.length <= 3) {
            controller.text += number;
          }
        }
      }
    },
    child: Container(
      height: MediaQuery.of(context).size.height / 18,
      width: MediaQuery.of(context).size.width / 4.75,
      /* decoration: BoxDecoration(
        color: ColorConstant.primaryWhite,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),

      ),*/
      child: Center(
          child: Text(
        number.toString(),
        style: AppStyle.skModern.copyWith(
            color: ColorConstant.blackC,
            fontWeight: FontWeight.w400,
            fontSize: getFontSize(28)),
      )),
    ),
  );
}

iconButtonWidget(
    {required BuildContext context, required VoidCallback function}) {
  return InkWell(
    onTap: function,
    child: Container(
      height: MediaQuery.of(context).size.height / 18,
      width: MediaQuery.of(context).size.width / 4.75,
      /* decoration:  BoxDecoration(
        color: ColorConstant.primaryWhite,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),

      ),*/
/*      child: Center(
        child: SvgPicture.asset(
          'asset/icons/back_space.svg',
          fit: BoxFit.cover,
          color: ColorConstant.blackC,
          height: 18,
          width: 21,
        ),
      )*/
    ),
  );
}
