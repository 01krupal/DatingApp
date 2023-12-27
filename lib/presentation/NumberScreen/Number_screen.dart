import 'package:country_code_picker/country_code_picker.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:dating_app/Custom%20Widgets/app_ElevatedButton%20.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:dating_app/presentation/NumberScreen/controller/number_screen_controller.dart';
import 'package:dating_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({super.key});

  NumberScreenController numberController = Get.put(NumberScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getVerticalSize(150)),
                    Text(StringConstants.myMobile,
                        style: TextStyle(
                            fontSize: getFontSize(38),
                            fontWeight: FontWeight.w900)),
                    SizedBox(height: getVerticalSize(10)),
                    Text(StringConstants.pleaseEnter),
                    SizedBox(height: getVerticalSize(40)),
                    Container(
                        height: getVerticalSize(58),
                        decoration: BoxDecoration(
                          border: Border.all(width: getFontSize(2)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CountryCodePicker(
                                closeIcon: Icon(Icons.keyboard_arrow_down),
                                showDropDownButton: true,
                                padding: EdgeInsets.all(1.0),
                                initialSelection: 'in',
                              ),
                              Container(
                                height: getVerticalSize(25),
                                width: getHorizontalSize(1),
                                color: Colors.black,
                              ),
                              SizedBox(width: getHorizontalSize(8)),
                              Expanded(
                                  child: TextFormField(
                                      keyboardType: TextInputType.phone,
                                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: StringConstants.pnNumber)))
                            ]))
                  ])),
                   SizedBox(height: getVerticalSize(70)),
                   AppElevatedButton(
                      buttonName: StringConstants.continueBtn,
                      onPressed: () {
                        Get.toNamed(AppRoutes.codeScreen);
              })
        ])));
  }
}
