import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

class SplashViewModel extends BaseViewModel {
  bool loading = false;
  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void updateLoader({required bool loadingStatus}){
    loading = loadingStatus;
    notifyListeners();
  }
}
