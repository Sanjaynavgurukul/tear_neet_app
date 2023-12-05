import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/db/provider.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/screens/chat_group_list/chat_group_list.dart';
import 'package:tyarineetki/screens/exam_time_Screen/exam_timer_screen.dart';
import 'package:tyarineetki/screens/exam_time_Screen/view_model/exam_timer_view_model.dart';
import 'package:tyarineetki/screens/home/home.dart';
import 'package:tyarineetki/screens/paper_stats_screen/paper_stats_screen.dart';
import 'package:tyarineetki/screens/paper_stats_screen/view_model/paper_stats_view_model.dart';
import 'package:tyarineetki/screens/profile/profile_page.dart';
import 'package:tyarineetki/screens/stats_screen/stats_screen.dart';
import 'package:tyarineetki/screens/test/test_screen.dart';
import 'package:tyarineetki/screens/welcome_screen.dart';
import 'package:tyarineetki/theme/app_color.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const Home(),
    const ChatGroupList(),
    const StatsScreen(),
    const TestScreen()
  ];

  Color getColor(int index) {
    if (index == selectedIndex) {
      return AppColor.primaryOrangeColor;
    }
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NavigationHelper()
              .normalNavigatePush(context: context, screen: const WelcomeScreen());
          // Provider().addGroup();
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: Icon(
                  CupertinoIcons.house,
                  color: getColor(0),
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                }),
            IconButton(
                icon: Icon(CupertinoIcons.chat_bubble_2, color: getColor(1)),
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                }),
            IconButton(
                icon: Icon(CupertinoIcons.graph_circle, color: getColor(2)),
                onPressed: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                }),
            const Spacer(),
            IconButton(
                icon: const Icon(CupertinoIcons.profile_circled),
                onPressed: () {
                  NavigationHelper().normalNavigatePush(
                      context: context, screen: ProfilePage());
                }),
          ],
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
    );
  }
}
