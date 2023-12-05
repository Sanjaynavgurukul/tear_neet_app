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
  PageController? _controller;
  int currentIndex = 0;
 List<Widget> pages = [
  const Padding(
    padding: EdgeInsets.only(left: 12,right: 12),
    child: Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as"),
  ),
  const Padding(
    padding: EdgeInsets.only(left: 12,right: 12),
    child: Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as"),
  ),
  const Padding(
    padding: EdgeInsets.only(left: 12,right: 12),
    child: Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as"),
  ),
];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //Initializing required View model :D
    viewModel = context.watch<SplashViewModel>();
  }

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IgnorePointer(
        ignoring: viewModel.loading,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Image.asset('assets/images_logo.jpeg'),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Tyari Neet Ki',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Ubuntu',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50,),
              const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'WELCOME',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Ubuntu',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      // contents of slider
                      return pages[index];
                    }),
              ),
              const SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) {
                    return Container(
                      height: 10,
                      width: currentIndex == index ? 25 : 10,
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: InkWell(
                  onTap: () {
                    _signInWithGoogle();
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: const Color(0xfffd5a50)),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: viewModel.loading
                        ? const Center(
                            child: CupertinoActivityIndicator(),
                          )
                        : Row(
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
                height: 26,
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
    if (googleUser == null) {
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
