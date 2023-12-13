import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
import 'package:tyarineetki/model/User.dart';

class ProfileViewModel extends BaseViewModel {
  CurrentUser? currentUser;
  int pictureType = 1;

  ProfileViewModel();

  ProfileViewModel.dynamic({required this.currentUser});

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void update() {
    notifyListeners();
  }

  Stream<DocumentSnapshot> fetchProfile() {
    return repository.geUserDetail();
  }

  void updateProfilePicture({required BuildContext context}) async {
    DialogHelper().showLoadingDialog(context: context);
    repository.updateUser(body: currentUser!.getJson());
    Future.delayed(const Duration(seconds: 2), (() {
      Navigator.pop(context);
      Navigator.pop(context);
    }));
  }
}
