import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/model/notes_model.dart';

class PdfViewModel extends BaseViewModel{
  NoteModel? data;

  PdfViewModel();

  PdfViewModel.argument({required this.data});

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

}