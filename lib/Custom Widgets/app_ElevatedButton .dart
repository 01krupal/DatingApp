import 'package:flutter/material.dart';
import '../App Configurations/ConstantsFiles/color_constants.dart';
import '../Utils/HelperFiles/math_utils.dart';
import '../theme/app_style.dart';

class AppElevatedButton extends StatelessWidget {
  final String buttonName;
  final void Function() onPressed;
  final Color? textColor;
  final Color? buttonColor;
  final FontWeight? fontWeight;
  final double? radius;
  final bool? isLoading;
  final double? fontSize;

  const AppElevatedButton(
      {Key? key,
      required this.buttonName,
      required this.onPressed,
      this.textColor,
      this.fontWeight,
      this.fontSize,
      this.buttonColor,
      this.radius,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ?? ColorConstant.btnRed,
            minimumSize: const Size.fromHeight(55),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 15)),
            textStyle: AppStyle.skModern.copyWith(
                color: ColorConstant.primaryAppTextF1,
                fontWeight: FontWeight.w700,
                fontSize: getFontSize(fontSize ?? 20))),
        child: !isLoading!
            ? Text(
                buttonName.toString(),
                style: AppStyle.skModern.copyWith(
                    color: textColor ?? ColorConstant.primaryAppTextF1,
                    fontWeight: fontWeight ?? FontWeight.w600,
                    fontSize: getFontSize(fontSize ?? 18)),
              )
            : SizedBox(
                height: getVerticalSize(30),
                width: getVerticalSize(30),
                child: CircularProgressIndicator(
                  color: ColorConstant.primaryAppTextF1,
                  strokeWidth: 2,
                )),
      ),
    );
  }
}
