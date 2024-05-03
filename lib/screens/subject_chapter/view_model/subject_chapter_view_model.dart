import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

class SubjectChapterViewModel extends BaseViewModel{
  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  Stream<QuerySnapshot> getChapterList({required String chapterId}) {
    return repository.getChapterList(chapterId: chapterId);
  }
}