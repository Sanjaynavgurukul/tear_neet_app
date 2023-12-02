import 'package:flutter/material.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

class ExamTimerViewModel extends BaseViewModel{


  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  Future<int> getTimerInSecond()async{
    String? getTime = await pref.getTimer();

    return int.parse((getTime??'0'))+400;
  }

}