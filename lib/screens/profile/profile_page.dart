import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/screens/profile/edit_profile_page.dart';
import 'package:tyarineetki/screens/profile/view_model/profile_view_model.dart';
import 'package:tyarineetki/screens/subscription/subscription.dart';
import 'package:tyarineetki/screens/subscription/view_model/subscription_view_model.dart';
import 'package:tyarineetki/widget/appbar_widget.dart';
import 'package:tyarineetki/widget/button_widget.dart';
import 'package:tyarineetki/widget/profile_widget.dart';

import '../../main.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // late StreamSubscription _paperListSubscription;
  late ProfileViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<ProfileViewModel>();
  }

  final user = auth.currentUser;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    viewModel.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          context: context,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  NavigationHelper().normalNavigatePush(
                      context: context, screen: EditProfilePage());
                },
                icon: const Icon(Icons.edit)),
            const SizedBox(
              width: 18,
            )
          ],
          onBackPress: () {
            Navigator.pop(context);
          }),
      body: ListView(
        padding: const EdgeInsets.only(top: 16),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: auth.currentUser!.photoURL!,
            onClicked: () async{
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          const SizedBox(height: 24),
          buildName(user!.displayName!, '${user!.email}'),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 48),
          buildAbout('Phone Number', '+91-8756646756'),
          const SizedBox(height: 16),
          buildAbout('About',
              'For your cellphone wallpaper, you can select cool images with the best image quality for your profile. a collection of wallpapers created by the boy. We hope you enjoy our expanding collection of high-definition photos that you can use as your smartphone'),
        ],
      ),
    );
  }

  void deo() async {
    log('check ----');
    User user = auth.currentUser!;
    await FirebaseAuth.instance.currentUser!.updateDisplayName('Sanjay');
    await FirebaseAuth.instance.currentUser!.updatePhotoURL(
        'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp');
    await FirebaseAuth.instance.currentUser!.reload();
    viewModel.update();
  }

  Widget buildName(String name, String email) => Column(
        children: [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {
          NavigationHelper().navigatePush(
              context: context,
              viewModel: SubscriptionViewModel(),
              screen: const Subscription());
        },
      );

  Widget buildAbout(String label, String about) => Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.grey.shade100)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$label',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                about,
                style: const TextStyle(fontSize: 16, height: 1.4),
              ),
            ],
          ),
        ),
      );
}
