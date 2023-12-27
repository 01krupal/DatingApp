import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:uuid/uuid.dart';

import '../../../App Configurations/ConstantsFiles/image_constants.dart';
import '../../../App Configurations/ConstantsFiles/string_constants.dart';



import 'package:flutter_chat_types/flutter_chat_types.dart' as types;


class MessageScreenController extends GetxController{


  TextEditingController textEditingController = TextEditingController();
  final List<types.Message> messages = []; //
  final user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );



  RxInt colour = 0.obs;

  void Onchange (int index){
    colour.value = index;
  }



  List status = [

    {
      "statusImage" : AppImages.statusYou,
      "statusText"  : StringConstants.you,
      "chatImage"   : AppImages.emelie,
      "chatTitleText"  : StringConstants.emeLie,
      "chatSubTitleText" : StringConstants.sticker,
      "chatTime" : StringConstants.timeOne
    },
    {
      "statusImage" : AppImages.statusEmma,
      "statusText"  : StringConstants.emma,
      "chatImage"   : AppImages.abigail,
      "chatTitleText"  : StringConstants.abiGail,
      "chatSubTitleText" : StringConstants.typing,
      "chatTime" : StringConstants.timeTwo
    },
    {
      "statusImage" : AppImages.onBordingImage3,
      "statusText"  : StringConstants.ava,
      "chatImage"   : AppImages.elizabeth,
      "chatTitleText"  : StringConstants.elizAbeth,
      "chatSubTitleText" : StringConstants.okSee,
      "chatTime" : StringConstants.timeThree
    },
    {
      "statusImage" : AppImages.onBordingImage2,
      "statusText"  : StringConstants.sophia,
      "chatImage"   : AppImages.penelope,
      "chatTitleText"  : StringConstants.peneLope,
      "chatSubTitleText" : StringConstants.youHey,
      "chatTime" : StringConstants.timeFour
    },
    {
      "statusImage" : AppImages.onBordingImage1,
      "statusText"  : StringConstants.emma,
      "chatImage"   : AppImages.chloe,
      "chatTitleText"  : StringConstants.cHloe,
      "chatSubTitleText" : StringConstants.youHello,
      "chatTime" : StringConstants.timeFive
    },
    {
      "statusImage" : AppImages.main,
      "statusText"  : StringConstants.sophia,
      "chatImage"   : AppImages.grace,
      "chatTitleText"  : StringConstants.grAce,
      "chatSubTitleText" : StringConstants.youGreat,
      "chatTime" : StringConstants.timeSix
    },
    {
      "statusImage" : AppImages.main2,
      "statusText"  : StringConstants.sophia,
      "chatImage"   : AppImages.elizabeth,
      "chatTitleText"  : StringConstants.elizAbeth,
      "chatSubTitleText" : StringConstants.sticker,
      "chatTime" : StringConstants.timeSeven
    },
    {
      "statusImage" : AppImages.main4,
      "statusText"  : StringConstants.sophia,
      "chatImage"   : AppImages.emelie,
      "chatTitleText"  : StringConstants.emeLie,
      "chatSubTitleText" : StringConstants.typing,
      "chatTime" : StringConstants.timeOne
    },
  ];


  void handleSendPressed(String message) {
    final textMessage = types.TextMessage(
      author: user, // Assuming 'user' is defined somewhere
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message,
    );

    addMessage(textMessage);
  }

  void addMessage(types.Message message) {
    messages.insert(0, message); // Fix: Insert the 'message' instead of 'messages'
  }

  void handlePreviewDataFetched(types.TextMessage message, types.PreviewData previewData) {
    final index = messages.indexWhere((element) => element.id == message.id);

    if (index != -1) {
      final updatedMessage = (messages[index] as types.TextMessage).copyWith(
        previewData: previewData,
      );

      messages[index] = updatedMessage;
    }
  }

  @override
  void onInit() {
    super.onInit();
    handleSendPressed;

    // You might initialize some data or perform other tasks here if needed
  }
}



































 /* import 'package:flutter/material.dart';

  Future<Widget> show123(BuildContext context) {
    return showModalBottomSheet<dynamic>(
        useRootNavigator: true,
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return ListView(
            shrinkWrap: true,
            children: [
              ListItem(),
              ListItem(),
              ListItem(),
            ],
          );
        });
  }

  You can get inspired by my case which depends on the number of AlbumRow dynamically. If the height reaches the maximum, you can get to the bottom by scrolling.

  enter image description here enter image description here*/



  // Future showBottomSheet(BuildContext context) {
  //   return showModalBottomSheet<dynamic>(
  //       useRootNavigator: true,
  //       barrierColor: Colors.black.withOpacity(0.5),
  //       isScrollControlled: true,
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return ConstrainedBox(
  //           constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.9),
  //           child: Container(
  //             decoration: new BoxDecoration(
  //                 color: Colors.blue, borderRadius: new BorderRadius.only(topLeft: const Radius.circular(25.0), topRight: const Radius.circular(25.0))),
  //             child: ListView(
  //               shrinkWrap: true,
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.fromLTRB(30, 30, 30, 45),
  //                   child: Text(
  //                     'Choose Album',
  //                     textAlign: TextAlign.center,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });






  // TextEditingController textEditingController = TextEditingController();
  // List<types.Message> messages = [];
  // final user = types.User(
  //   id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  // );
  //
  // void handleSendPressed(String message) {
  //   final textMessage = types.TextMessage(
  //     author: user,
  //     createdAt: DateTime.now().millisecondsSinceEpoch,
  //     id: const Uuid().v4(),
  //     text: message,
  //   );
  //
  //   _addMessage(textMessage);
  // }
  //
  // void _addMessage(types.Message message) {
  //   messages.insert(0, message);
  // }
  //
  // void handlePreviewDataFetched(
  //     types.TextMessage message,
  //     types.PreviewData previewData,
  //     ) {
  //   final index = messages.indexWhere((element) => element.id == message.id);
  //   final updatedMessage = (messages[index] as types.TextMessage).copyWith(
  //     previewData: previewData,
  //   );
  //   messages[index] = updatedMessage;
  // }
  //
  // void _loadMessages() async {
  //   final response = await rootBundle.loadString('assets/messages.json');
  //   final messagesChat = (jsonDecode(response) as List)
  //       .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
  //       .toList();
  //
  //   messages = messagesChat;
  // }



