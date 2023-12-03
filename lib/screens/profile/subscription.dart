import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tyarineetki/theme/app_color.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff282A37),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    labelText(
                        label: "Basic Plan",
                        textColor: const Color(0xffE7E7E8)),
                    const Gap(40),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height,
                        maxWidth: MediaQuery.of(context).size.width,
                      ),
                      child: const Text.rich(
                        TextSpan(
                          text: '\$79',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF),
                              fontSize: 28),
                          children: [
                            TextSpan(
                              text: ' /month',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(30),
                    labelText(
                        label: "This Pachage is suitable for teams",
                        textColor: const Color(0xffE7E7E8)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(30),
                    labelText(
                        label: "What's included:",
                        textColor: const Color(0xffFFFFFF)),
                    const Gap(50),
                    labelText(
                        label: "This Pachage is suitable for teams",
                        textColor: const Color(0xff8E8F96)),
                    const Gap(20),
                    labelText(
                        label: "This Pachage is suitable for teams",
                        textColor: const Color(0xff8E8F96)),
                    const Gap(20),
                    labelText(
                        label: "This Pachage is suitable for teams",
                        textColor: const Color(0xff8E8F96)),
                    const Gap(20),
                    labelText(
                        label: "This Pachage is suitable for teams",
                        textColor: const Color(0xff8E8F96)),
                    const Gap(20),
                    labelText(
                        label: "This Pachage is suitable for teams",
                        textColor: const Color(0xff8E8F96)),
                    const Gap(20),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(),
                            onPressed: () {},
                            child: const Text("Get Started")),
                      ),
                    ),
                    // const Gap(20)
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget labelText({required String label, required Color textColor}) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: Text(label,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 16, color: textColor)),
    );
  }
}
