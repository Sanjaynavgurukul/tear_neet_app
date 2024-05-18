import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/helper/utils.dart';
import 'package:tyarineetki/model/subject_subscription_model.dart';

class SubjectChapterViewModel extends BaseViewModel{
  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  Stream<QuerySnapshot> getChapterList({required String chapterId}) {
    return repository.getChapterList(chapterId: chapterId);
  }

  bool isPurchased({required String itemId}){
    if(util.subjectSubscription ==  null){
      return false;
    }

    if(util.subjectSubscription!.data  == null ){
      return false;
    }

    if(util.subjectSubscription!.data!.isEmpty){
      return false;
    }

    List<SubjectSubscriptionData> s = util.subjectSubscription!.data!.where((element){
      return element.chapterId!.trim() == itemId.trim();
    }).toList();

    if(s.isNotEmpty){
      return true;
    }
    return false;
  }
}