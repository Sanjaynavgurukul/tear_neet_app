import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/custom_data.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/screens/landing_screen/landing_screen.dart';
import 'package:tyarineetki/screens/landing_screen/view_model/landing_view_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SafeArea(child: mainView(context)),
    );
  }

  Widget mainView(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10,),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                      text: 'Habit',
                      style: TextStyle(fontSize: 36, color: Colors.black),
                      children: [
                        TextSpan(
                            text: 'Kit',
                            style: TextStyle(fontSize: 36, color: Colors.blue)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: customData.length,
                    itemBuilder: (context, index) {
                      final data = customData[index];
                      return listView(
                        data['title'],
                        data['textColor'],
                        data['subtitle'],
                        data['iconBoxColor'],
                        data['icon'],
                      );
                    })
              ],
            ),
          ),
        ),
        Positioned(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 28),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue
                  // gradient: const LinearGradient(
                  //     begin: Alignment.topLeft,
                  //     end: Alignment.topRight,
                  //     colors: [Colors.indigoAccent, Colors.purple]),
                  ),
              child: const Text(
                'Purchase Now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ))
      ],
    );
  }

  Widget listView(String title, int textColor, String subtile, int boxColor,
      IconData iconText) {
    return ListTile(
      dense: true,
      minVerticalPadding: 0,
      horizontalTitleGap: 12,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Text(title,
            style: TextStyle(
                fontSize: 14,
                color: Color(textColor),
                fontWeight: FontWeight.bold)),
      ),
      subtitle: Text(subtile,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      leading: SizedBox(
        width: 36,
        height: 36,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(boxColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(
              iconText,
              color: Colors.white,
            ),
          ),
        ),
      ),
      style: ListTileStyle.list,
      onTap: () {},
    );
  }
}
