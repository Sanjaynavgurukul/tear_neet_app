import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
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

  // final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return mainView();
  }

  Widget mainView() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.primaryOrangeColor,
              AppColor.primaryOrangeColorDark,
            ]
          )
        ),
        child: Column(
          children: [
            imageSection(),
            Padding(
              padding: EdgeInsets.only(left: 16,right: 16,bottom: 20),
              child: Container(
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
                        boxShadow: [BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5.0,
                        ),],
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
            ),
          ],
        ),
      ),
    );
  }

  Widget imageSection(){

    return Expanded(
      child: Container(
        child: Center(
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }

}
