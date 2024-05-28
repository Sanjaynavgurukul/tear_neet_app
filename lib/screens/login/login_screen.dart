import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

import 'view_model/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginViewModel viewModel;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //Initializing required View model :D
    viewModel = context.watch<LoginViewModel>();
  }


  @override
  Widget build(BuildContext context) {
    return mainView();
  }

  Widget mainView() {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          height: double.infinity,
          width: double.infinity,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Login",style: TextStyle(color: AppColor.primaryOrangeColor,fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 6,),
                    Text("Login with Google Account to access complete app features.",style: TextStyle(color: Colors.black38,fontSize: 14,fontWeight: FontWeight.normal),),
                    SizedBox(height: 50,),
                    Spacer(),
                    Align(alignment: Alignment.center,child: Image.asset('assets/three.jpg'),),
                    Spacer(),
                  ],
                ),
              ),),
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    viewModel.signInWithGoogle(context: context);
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 5.0,
                          ),
                        ],
                        color: AppColor.whiteColor),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/search.png'),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Login With Google',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:30),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
              child: SvgPicture.asset('assets/splash_1.svg'))),
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                viewModel.signInWithGoogle(context: context);
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5.0,
                      ),
                    ],
                    color: AppColor.whiteColor),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/search.png'),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Login With Google',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget staticImage() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [SvgPicture.asset('assets/splash_1.svg')],
      ),
      // child: Image.asset('assets/logo.png'),
    );
  }

  Widget imageSection() {
    return StreamBuilder(
        stream: viewModel.getSplashImage(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.connectionState == ConnectionState.waiting) {
            return staticImage();
          }
          if (snapshot.hasError) {
            return staticImage();
          }

          if (!snapshot.hasData) {
            return staticImage();
          }

          Map<String, dynamic>? data =
              snapshot.data!.data() as Map<String, dynamic>;
          if (data.isEmpty) {
            return staticImage();
          }

          return CustomCacheImage(
            borderRadius: BorderRadius.circular(0),
            imageUrl: data['imageUrl'],
            height: double.infinity,
            width: double.infinity,
          );
        });
  }
}
