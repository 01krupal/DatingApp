import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dating_app/Custom%20Widgets/app_ElevatedButton%20.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:dating_app/presentation/NumberScreen/controller/number_screen_controller.dart';
import 'package:dating_app/routes/app_routes.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';



class NumberScreen extends StatelessWidget {
  NumberScreen({super.key});

  NumberScreenController numberController = Get.put(NumberScreenController());
  TextEditingController  phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getVerticalSize(150)),
                  Text(
                    StringConstants.myMobile,
                    style: TextStyle(fontSize: getFontSize(38), fontWeight: FontWeight.w900),
                  ),
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
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(10)],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: StringConstants.pnNumber,
                            ),
                            controller: phoneNumberController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getVerticalSize(70)),
            AppElevatedButton(
              buttonName: StringConstants.continueBtn,
              onPressed: () {
                if (phoneNumberController.text.length == 10) {
                  Get.toNamed(AppRoutes.codeScreen);
                } else {
                  // Show a Snackbar with the validation error
                  Get.snackbar(
                    'Error',
                    'Please enter a valid 10-digit phone number',
                    snackPosition: SnackPosition.TOP,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
