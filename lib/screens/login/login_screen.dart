import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
  final introKey = GlobalKey<IntroductionScreenState>();
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
      // body: Container(
      //   decoration: BoxDecoration(color: Colors.white),
      //   child: Column(
      //     children: [
      //       Expanded(child: imageSection()),
      //
      //     ],
      //   ),
      // ),
      body: imageSection(),
    );
  }

  Widget imageSection() {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset('assets/wall_2.png'),
          ),
          Expanded(child: IntroductionScreen(
            key: introKey,
            globalBackgroundColor: Colors.white,
            allowImplicitScrolling: false,
            autoScrollDuration: 3000,
            infiniteAutoScroll: false,
            globalFooter: SizedBox(
              width: double.infinity,
              height: 80,
              child: Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    viewModel.signInWithGoogle(context: context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 1, color: Colors.black45),
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
            pages: [
              PageViewModel(
                titleWidget: SizedBox(height: 0,),
                body:
                "Kabhi socha hai, ek hi class mein padte hue, ek hi teacher se seekhte hue, aur wahi kitaabein padhte hue, kyun ek bacha hamesha top kar leta hai, aur doosra bichaara fail hone ka darr le kar padhai karta rehta hai? Jab sab kuch same hai—teacher bhi , kitaabein bhi —phir bhi aisa kyun hota hai ?",
                decoration: pageDecoration,
              ),
              PageViewModel(
                titleWidget: SizedBox(height: 0,),
                body:
                "Aakhir kyun padhai karna boring lagta hai, lekin reels dekhne ka dil karta hai? Kyun kuch bache government medical college mein seedha admission le lete hain, aur kuch ko saalon tak drop karna padta hai?",
                decoration: pageDecoration,
              ),
              PageViewModel(
                titleWidget: SizedBox(height: 0,),
                body:
                "Agar concepts clear nahi hote, toh kitna bhi ratta maar lo, exam ke waqt sab kuch ulta-pulta ho jaata hai. Aur jab padhai samajh mein na aaye, toh wo sirf ek boring aur thaka dene waali activity ban kar reh jaati hai.",
                decoration: pageDecoration,
              ),
              PageViewModel(
                titleWidget: SizedBox(height: 0,),
                body:
                "Lekin ab tension lene ki zaroorat nahi, kyunki hum le aaye hain ek app jo aapki padhai ka tareeka hi badal degi . Ab aap padhai karoge apni hi bhasha mein, waise jaise aap roz baat karte ho. Ab na sirf padhai samajh mein aayegi, balki concepts bhi itne clear honge ki aapka dil khud-bakhud padhai mein lagega.",
                decoration: pageDecoration,
              ),
            ],
            onDone: (){

            },
            onSkip: () {},
            // You can override onSkip callback
            showSkipButton: false,
            showDoneButton: false,
            // showBottomPart: false,
            showNextButton: false,
            skipOrBackFlex: 0,
            nextFlex: 0,
            showBackButton: false,
            //rtl: true, // Display as right-to-left
            back: const Icon(Icons.arrow_back),
            skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
            next: const Icon(Icons.arrow_forward),
            done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
            curve: Curves.fastLinearToSlowEaseIn,
            controlsMargin: const EdgeInsets.all(16),
            controlsPadding: kIsWeb
                ? const EdgeInsets.all(12.0)
                : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          ))
        ],
      ),
    );
  }
}


