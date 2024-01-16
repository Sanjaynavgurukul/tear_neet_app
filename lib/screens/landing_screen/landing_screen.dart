import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/screens/chat_group_list/chat_group_list.dart';
import 'package:tyarineetki/screens/home/home.dart';
import 'package:tyarineetki/screens/profile/profile_page.dart';
import 'package:tyarineetki/screens/profile/view_model/profile_view_model.dart';
import 'package:tyarineetki/screens/stats_screen/stats_screen.dart';
import 'package:tyarineetki/screens/test/test_screen.dart';
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //   },
      //   child: const Icon(Icons.add),
      // ),
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
                  NavigationHelper().navigatePush(
                      context: context,
                      viewModel: ProfileViewModel(),
                      screen: ProfilePage());
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
