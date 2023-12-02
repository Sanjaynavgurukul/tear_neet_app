import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/main.dart';
import 'package:tyarineetki/model/chat_group_model.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatViewModel extends BaseViewModel {
  ChatGroupModel? groupModel;

  final user = types.User(
    id: auth.currentUser!.uid,
    firstName: auth.currentUser!.displayName,
    imageUrl: auth.currentUser!.photoURL,
  );

  //default constructor :D
  ChatViewModel();

  //constructor with argument
  ChatViewModel.argument({required this.groupModel});

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  Stream<QuerySnapshot> fetchList(){
    return repository.fetchList(colId: groupModel!.groupType!);
  }

  void addNewMessage({required Map<String, dynamic> body}) {
    repository.addNewMessage(body: body, groupType: groupModel!.groupType);
  }

  void updateMainGroup({required Map<String, dynamic> body}) {
    repository.addNewMessage(body: body, groupType: groupModel!.groupType);
  }
}
