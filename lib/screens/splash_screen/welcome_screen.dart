import 'package:flutter/material.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/screens/landing_screen/landing_screen.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/feature_label.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: AppColor.primaryOrangeColor,
            onPressed: () {
              pref.setWelcomeDisplayed(value: true);
              NavigationHelper().normalNavigatePushReplacement(
                  context: context, screen: const LandingScreen());
            },
            label: const Text('Continue')),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                FeatureLabel(label: 'Benefits You Got'),
                const SizedBox(
                  height: 12,
                ),
                mainList()
              ],
            ),
          ),
        ));
  }

  Widget mainList() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          card(
            icon: '🔥',
            label: '20 Live Fortnight Tests',
          ),
          card(
            icon: '🔥',
            label: '12 prepared test',
          ),
          card(
            icon: '📅',
            label: 'Weekend Tests',
          ),
          card(
            icon: '🚀',
            label: '20 Tests Before D-Day',
          ),
          card(
            icon: '💬',
            label: 'A Question & Answer Forum',
          ),
        ],
      ),
    );
  }

  Widget card({required String label, required String icon}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      width: double.infinity,
      padding: const EdgeInsets.only(top: 18, bottom: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey.shade50),
            child: Text(
              icon,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Text(
            label,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
          )),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> getList() {
    return [
      {'label': '', 'asset': ''}
    ];
  }
}
