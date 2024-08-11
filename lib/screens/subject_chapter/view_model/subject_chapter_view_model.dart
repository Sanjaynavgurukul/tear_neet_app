import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

class SubjectChapterViewModel extends BaseViewModel{
  int selectedIndex = 0;

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void updateIndex(int i){
    selectedIndex = i;
    notifyListeners();
  }

  Stream<QuerySnapshot> getChapterList({required String chapterId,required num type}) {
    return repository.getChapterList(chapterId: chapterId,type: type);
  }
}