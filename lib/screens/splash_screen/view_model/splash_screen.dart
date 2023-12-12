import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/screens/landing_screen/landing_screen.dart';
import 'package:tyarineetki/screens/login/login_screen.dart';
import 'package:tyarineetki/screens/login/view_model/login_view_model.dart';

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
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser == null) {
      navigateToLogin(context: context);
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
          .normalNavigatePush(context: context, screen: const LandingScreen());
    }));
  }
}
