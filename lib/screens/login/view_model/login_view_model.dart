import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/helper/utils.dart';
import 'package:tyarineetki/main.dart';
import 'package:tyarineetki/model/User.dart';
import 'package:tyarineetki/screens/landing_screen/landing_screen.dart';
import 'package:tyarineetki/screens/splash_screen/welcome_screen.dart';

class LoginViewModel extends BaseViewModel {
  bool loading = false;

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void updateLoader({required bool loadingStatus}) {
    loading = loadingStatus;
    notifyListeners();
  }

  Future<void> signInWithGoogle({required BuildContext context}) async {
    updateLoader(loadingStatus: true);
    // Trigger the authentication flow
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      updateLoader(loadingStatus: false);
      return;
    }

    // Obtain the auth details from the request
    final googleAuth =
    await (await GoogleSignIn(
      scopes: ["profile", "email"],
    ).signIn())
        ?.authentication;
    // final googleAuth = await googleUser.authentication;

    if (googleAuth != null) {
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      // await auth.signInWithCredential(credential);
      User? firebaseUser;
      try {
        firebaseUser =
            (await FirebaseAuth.instance.signInWithCredential(credential)).user;
        updateLoader(loadingStatus: false);
      } catch (e) {
        updateLoader(loadingStatus: false);
      } finally {
        DocumentReference dbRef = FirebaseFirestore.instance
            .collection('users')
            .doc(firebaseUser!.uid);

        dbRef.get().then((data) {
          if (data.exists) {
            util.userId = firebaseUser!.uid;
            Map<String, dynamic> json = data.data() as Map<String, dynamic>;
            util.user = CurrentUser.fromJson(json);
            checkPhoneNumber(context: context);
          } else {
            Map<String, dynamic> body = {
              'name': firebaseUser!.displayName ?? '',
              'email': firebaseUser.email ?? '',
              'phone': firebaseUser.phoneNumber ?? '',
              'profile': firebaseUser.photoURL ?? '',
            };
            repository.newUser(body: body, userId: firebaseUser.uid);
            util.userId = firebaseUser.uid;
            util.user = CurrentUser.fromJson(body);
            checkPhoneNumber(context: context);
          }
        });
      }
    }
  }

  void checkPhoneNumber({required BuildContext context}) {
    if (util.user == null) {
      updateLoader(loadingStatus: false);
      showToast(
          message: 'Something Went Wrong Please Try again later',
          context: context);
      return;
    }

    if (util.user!.phone == null || util.user!.phone!.isEmpty) {
      NavigationHelper()
          .normalNavigatePushReplacement(context: context, screen: const WelcomeScreen());
      return;
    }

    NavigationHelper()
        .normalNavigatePushReplacement(context: context, screen: const WelcomeScreen());
  }

  Stream<DocumentSnapshot> getSplashImage() {
    return repository.getSplashImage();
  }
}
