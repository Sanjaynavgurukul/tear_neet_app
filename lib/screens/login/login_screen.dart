import 'package:flutter/material.dart';
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

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {}

  Widget _buildImage(String url) {
    return CustomCacheImage(
      imageUrl: url,
      width: double.infinity,
      height: double.infinity,
      borderRadius: BorderRadius.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: false,
      autoScrollDuration: 3000,
      infiniteAutoScroll: false,
      isProgress: true,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          bottom: false,
          right: false,
          left: false,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, top: 16),
            child: Container(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black.withOpacity(0.6)),
              child: const Text(
                "English",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      globalFooter: Container(
        margin: const EdgeInsets.only(top: 12),
        width: double.infinity,
        padding:
            const EdgeInsets.only(bottom: 12, top: 12, left: 16, right: 16),
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                viewModel.signInWithGoogle();
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.primaryOrangeColor),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'by continuing, you agree to our app’s Terms of Service and acknowledge that you’ve read our Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
      pages: [
        getItem(
            image:
                "https://watermark.lovepik.com/photo/40011/8111.jpg_wh1200.jpg"),
        getItem(
            image: "https://img.lovepik.com/photo/40012/3881.jpg_wh860.jpg"),
        getItem(
            image:
                "https://img.freepik.com/free-vector/medicine-pharmacy-blue-poster-with-hospital-symbols-flat-illustration_1284-36584.jpg"),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      showNextButton: false,
      nextFlex: 0,
      showDoneButton: false,
      showBackButton: false,
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(6),
      controlsPadding: const EdgeInsets.only(right: 0),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 2.0),
        color: Colors.grey.shade400,
        activeSize: const Size(22.0, 2.0),
        activeColor: Colors.white,
        spacing: const EdgeInsets.only(right: 4),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }

  PageViewModel getItem({required String image}) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.transparent,
      fullScreen: true,
      contentMargin: EdgeInsets.zero,
      imagePadding: EdgeInsets.zero,
    );

    return PageViewModel(
      bodyWidget: Container(
        alignment: Alignment.center,
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            tileMode: TileMode.mirror,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x00f44336), Colors.black38, Colors.black],
            stops: [
              0,
              0.2,
              0.6,
            ],
          ),
          backgroundBlendMode: BlendMode.srcOver,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'An immutable description',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'An immutable description of how to paint an arbitrary shape.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      titleWidget: const SizedBox(),
      image: _buildImage('$image'),
      decoration: pageDecoration,
    );
  }
}
