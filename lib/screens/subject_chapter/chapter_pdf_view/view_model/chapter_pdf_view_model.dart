import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/model/chapter_model.dart';
import 'package:tyarineetki/model/notes_model.dart';

class ChapterPdfViewModel extends BaseViewModel{
  ChapterModelData? data;

  ChapterPdfViewModel();

  ChapterPdfViewModel.argument({required this.data});

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

}