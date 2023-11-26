import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/screens/splash_screen/view_model/splash_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class InitialSplash extends StatefulWidget {
  const InitialSplash({super.key});

  @override
  State<InitialSplash> createState() => _InitialSplashState();
}

class _InitialSplashState extends State<InitialSplash> {
  late SplashViewModel viewModel;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //Initializing required View model :D
    viewModel = context.watch<SplashViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IgnorePointer(
        ignoring: viewModel.loading,
        child: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/initial_splash.png'),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Who Said Learning can\'tbe fun?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Ubuntu',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Certificate so we can create an OAuth2 client and API key for your app. To get your SHA-1, follow these instructions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Ubuntu',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 16,right: 16),
                child: InkWell(
                  onTap: (){
                    _signInWithGoogle();
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Color(0xfffd5a50)),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: viewModel.loading ?const Center(child: CupertinoActivityIndicator(),):Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/google.svg'),
                        const Text(
                          'Login With Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _signInWithGoogle() async {
    viewModel.updateLoader(loadingStatus: true);
    // Trigger the authentication flow
    final googleUser = await GoogleSignIn().signIn();
    if(googleUser == null){
      viewModel.updateLoader(loadingStatus: false);
      return;
    }

    // Obtain the auth details from the request
    final googleAuth = await googleUser?.authentication;

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
        viewModel.updateLoader(loadingStatus: false);
      } catch (e) {
        viewModel.updateLoader(loadingStatus: false);
        print(e.toString());
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
