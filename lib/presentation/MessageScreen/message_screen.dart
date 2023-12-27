import 'package:dating_app/presentation/MessageScreen/controller/Message_screen_controller.dart';
import 'package:dating_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';

import '../../App Configurations/ConstantsFiles/color_constants.dart';
import '../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../App Configurations/ConstantsFiles/string_constants.dart';
import '../../Utils/HelperFiles/math_utils.dart';

class MessageScreen extends GetWidget<MessageScreenController> {
  MessageScreen({super.key});

  MessageScreenController messageScreencontroller = Get.put(MessageScreenController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getVerticalSize(80)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringConstants.messages,
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: getFontSize(35)),
                ),
                Container(
                  height: getVerticalSize(55),
                  width: getHorizontalSize(53),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Image.asset(
                      AppImages.sort,
                    ),
                  ),
                )              ],
            ),
          ),
          SizedBox(height: getVerticalSize(20)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: getHorizontalSize(2))),
                    hintText: "search",
                    prefixIcon: Icon(Icons.search))),
          ),
          SizedBox(height: getVerticalSize(15)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: Text(StringConstants.activities,
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: getFontSize(20))),
          ),
          SizedBox(height: getVerticalSize(20)),
          Padding(
            padding: EdgeInsets.only(left: getHorizontalSize(25)),
            child: Container(
                height: getVerticalSize(100),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: controller.status.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  right: getHorizontalSize(15)),
                              child: InkWell(
                                  onTap: () => controller.colour.value,
                                  child: Obx(
                                    () => Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color:
                                                  controller.colour.value == 0
                                                      ? Colors.red
                                                      : ColorConstant
                                                          .transPatent,
                                              width: 2)),
                                      child: CircleAvatar(
                                        maxRadius: 32,
                                        backgroundImage: AssetImage(controller
                                            .status[index]["statusImage"]),
                                      ),
                                    ),
                                  ))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(12),
                                  top: getVerticalSize(2)),
                              child: Text(
                                  controller.status[index]["statusText"])),
                        ],
                      );
                    })),
          ),
          SizedBox(height: getVerticalSize(15)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
            child: Text(StringConstants.messages,
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: getFontSize(20))),
          ),
          SizedBox(height: getVerticalSize(10)),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: controller.status.length,
              itemBuilder: (context, index) {
                return StatefulBuilder(
                  builder: (context, setState) {
                   return InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: ColorConstant.transPatent,
                            context: context,
                            builder: (context) {
                              return ConstrainedBox(
                                constraints: BoxConstraints(
                                    maxHeight:
                                    MediaQuery.of(context).size.height * 0.8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: ColorConstant.backgroundColor,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40),
                                      )),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: getHorizontalSize(40),
                                        vertical: getVerticalSize(30)),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  maxRadius: 32,
                                                  backgroundImage: AssetImage(
                                                      controller.status[index]
                                                      ["chatImage"]),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  controller.status[index]
                                                  ["chatTitleText"],
                                                  style: TextStyle(
                                                    fontSize: getFontSize(18),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              height: getVerticalSize(55),
                                              width: getHorizontalSize(53),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(13),
                                                  border: Border.all(color: Colors.grey)),
                                              child: Padding(
                                                padding: const EdgeInsets.all(9.0),
                                                child: Image.asset(
                                                  AppImages.moreDots,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Chat(
                                            messages: controller.messages,
                                            onSendPressed: (p0) {},
                                            user: controller.user,
                                            onPreviewDataFetched:
                                            controller.handlePreviewDataFetched,
                                            showUserAvatars: true,
                                            showUserNames: true,
                                            theme:DefaultChatTheme(backgroundColor: ColorConstant.transPatent,primaryColor: ColorConstant.btnBackgrung),
                                            customBottomWidget: Padding(
                                              padding: EdgeInsets.only(left: getHorizontalSize(25),right: getHorizontalSize(25)),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                        height: getVerticalSize(52),
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              child: TextField(
                                                                controller:
                                                                controller.textEditingController,
                                                                decoration: InputDecoration(
                                                                    border: OutlineInputBorder(
                                                                        borderRadius:
                                                                        BorderRadius.circular(15),
                                                                        borderSide: BorderSide(
                                                                            width: getHorizontalSize(1))),
                                                                    hintText:StringConstants.yourMessage,
                                                                    suffixIcon:const InkWell (
/*                                                                        onTap: () {
                                                                          controller.handleSendPressed(controller.textEditingController.text);
                                                                          controller.textEditingController.text="";
                                                                        }*/
                                                                        child:
                                                                        Icon(Icons.dark_mode,))),
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                    ),
                                                  ),
                                                  SizedBox(width: getHorizontalSize(10)),
                                                  InkWell(onTap: () {
                                                    controller.handleSendPressed(controller.textEditingController.text);
                                                    controller.textEditingController.text="";
                                                  },
                                                    child: Container(
                                                      height: getVerticalSize(50),
                                                      width: getHorizontalSize(50),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(13),
                                                          border: Border.all(color: Colors.grey)),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(9.0),
                                                        child: Image.asset(
                                                          AppImages.send,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ]
                                              )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getHorizontalSize(30),
                            vertical: getVerticalSize(2)),
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 32,
                              backgroundImage:
                              AssetImage(controller.status[index]["chatImage"]),
                            ),
                            SizedBox(
                              width: getHorizontalSize(10),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.status[index]["chatTitleText"],
                                  style: TextStyle(
                                    fontSize: getFontSize(18),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  controller.status[index]["chatSubTitleText"],
                                  style: TextStyle(
                                    fontSize: getFontSize(15),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(controller.status[index]["chatTime"])
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
