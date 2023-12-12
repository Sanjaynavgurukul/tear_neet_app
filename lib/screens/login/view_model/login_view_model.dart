import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

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

  Future<void> signInWithGoogle() async {
    updateLoader(loadingStatus: true);
    // Trigger the authentication flow
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      updateLoader(loadingStatus: false);
      return;
    }

    // Obtain the auth details from the request
    final googleAuth = await googleUser.authentication;

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
        // DocumentReference dbRef = FirebaseFirestore.instance
        //     .collection('users')
        //     .doc(firebaseUser!.uid);
        //
        // dbRef.get().then((data) {
        //   updateUser(firebaseUser, newUser: !data.exists);
        // });
      }
    }
  }
}
