import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/helper/utils.dart';
import 'package:tyarineetki/model/chapter_model.dart';
import 'package:tyarineetki/model/subject_subscription_model.dart';

class SubjectChapterViewModel extends BaseViewModel {
  bool? hasTypes;
  String? selectedType;
  List<ChapterModelData> filterData = [];

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void updateHasType({required String type, required bool hasTypeList}) {
    hasTypes = hasTypeList;
    selectedType = type;
    log('type--------- 1 $type');
    notifyListeners();
  }

  void updateType({required String type}) {
    selectedType = type;
    log('type--------- $type');
    notifyListeners();
  }

  List<ChapterModelData> filterList(ChapterModel data) {
    if (!hasTypes!) {
      return data.data ?? [];
    }

    if (selectedType == null || selectedType!.isEmpty) {
      return data.data ?? [];
    }

    log('che kndfnnjds ---- ${selectedType}');

    return data.data!.where((element) => element.type == selectedType).toList();
  }

  Stream<QuerySnapshot> getChapterList({required String chapterId}) {
    return repository.getChapterList(chapterId: chapterId);
  }

}
