import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/model/chat_group_model.dart';

class ChatViewModel extends BaseViewModel {
  ChatGroupModel? groupModel;

  //default constructor :D
  ChatViewModel();

  //constructor with argument
  ChatViewModel.argument({required this.groupModel});

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void addNewMessage({required Map<String,dynamic> body}) {
    repository.addNewMessage(body: body, groupType: groupModel!.groupId);
  }

  void updateMainGroup({required Map<String, dynamic> body}) {
    repository.addNewMessage(body: body, groupType: groupModel!.groupType);
  }
}
