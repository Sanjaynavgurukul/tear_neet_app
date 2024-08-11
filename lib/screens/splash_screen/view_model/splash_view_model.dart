// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/helper/utils.dart';
import 'package:tyarineetki/main.dart';
import 'package:tyarineetki/model/User.dart';
import 'package:tyarineetki/screens/landing_screen/landing_screen.dart';
import 'package:tyarineetki/screens/login/login_screen.dart';
import 'package:tyarineetki/screens/login/view_model/login_view_model.dart';
import 'package:tyarineetki/screens/splash_screen/welcome_screen.dart';

class SplashViewModel extends BaseViewModel {
  bool loading = false;

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void updateLoader({required bool loadingStatus}) {
    loading = loadingStatus;
    notifyListeners();
  }

  void initiate({required BuildContext context}) async {

    FirebaseAuth fAuth = FirebaseAuth.instance;
    if (fAuth.currentUser == null) {
      navigateToLogin(context: context);
      return;
    }

    checkUser(id: fAuth.currentUser!.uid, context: context);
  }

  void checkUser({required String id, required BuildContext context}) async {
    DocumentReference dbRef =
        FirebaseFirestore.instance.collection('users').doc(id);

    dbRef.get().then((data) {
      if (data.exists) {
        util.userId = id;
        Map<String, dynamic> json = data.data() as Map<String, dynamic>;
        util.user = CurrentUser.fromJson(json);
        navigateToLanding(context: context);
      } else {
        navigateToLogin(context: context);
      }
    });
  }

  void checkPhoneNumber({required BuildContext context}) async {
    if (util.user == null) {
      updateLoader(loadingStatus: false);
      showToast(
          message: 'Something Went Wrong Please Try again later',
          context: context);
      return;
    }

    if (util.user!.phone == null || util.user!.phone!.isEmpty) {
      NavigationHelper()
          .normalNavigatePush(context: context, screen: const WelcomeScreen());
      return;
    }

    bool? status = await pref.getWelcomeDisplayed();
    if (status == null) {
      NavigationHelper().normalNavigatePushReplacement(
          context: context, screen: const WelcomeScreen());
      return;
    }

    if (!status) {
      NavigationHelper().normalNavigatePushReplacement(
          context: context, screen: const WelcomeScreen());
      return;
    }

    navigateToLanding(context: context);
  }

  void navigateToLogin({required BuildContext context}) {
    Future.delayed(const Duration(seconds: 3), (() {
      NavigationHelper().navigatePushReplacement(
          context: context,
          viewModel: LoginViewModel(),
          screen: const LoginScreen());
    }));
  }

  void navigateToLanding({required BuildContext context}) {
    Future.delayed(const Duration(seconds: 3), (() {
      NavigationHelper()
          .normalNavigatePushReplacementUntil(context: context, screen: const LandingScreen());
    }));
  }
}
