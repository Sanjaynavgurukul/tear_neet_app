import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

class ProfileViewModel extends BaseViewModel {
  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  Future<String> uploadImageToFirebase({required File? pickedImageFile}) {
    return repository.uploadImageToFirebase(pickedImageFile: pickedImageFile);
  }

  Future<void> saveUserDetails(
      {required Map<String, dynamic> data, required String userId}) {
    return repository.saveUserDetails(data: data, userId: userId);
  }

  Future<Map<String, dynamic>> fetchUserDetails({required String userId}) {
    return repository.fetchUserDetails(userId: userId);
  }

  void update() {
    notifyListeners();
  }
}
