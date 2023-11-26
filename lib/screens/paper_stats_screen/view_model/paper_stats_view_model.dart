import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

class PaperStatsViewModel extends BaseViewModel{
  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }
}