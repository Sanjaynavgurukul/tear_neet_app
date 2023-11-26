import 'package:flutter/material.dart';

abstract class BaseViewModel extends ChangeNotifier {

  void showToast({required String message, required BuildContext context});

  void displayToastMessage({required String message, required BuildContext context, bool onTop = false}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
