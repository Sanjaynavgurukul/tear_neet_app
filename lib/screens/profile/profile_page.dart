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
  late ProfileViewModel viewModel;
  final user = auth.currentUser;
  final phoneController = TextEditingController();
  final aboutController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<ProfileViewModel>();
  }

  @override
  void initState() {
    super.initState();
    viewModel = Provider.of<ProfileViewModel>(context, listen: false);
    viewModel.fetchUserDetails(userId: user!.uid).then((snapshot) {
      aboutController.text = snapshot.aboutUs ?? '';
      phoneController.text = snapshot.phoneNumber ?? '';
    });
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
            IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                },
                icon: const Icon(Icons.logout_outlined)),
            const SizedBox(
              width: 10,
            ),
          ],
          onBackPress: () {
            Navigator.pop(context);
          }),
      body: ListView(
        padding: const EdgeInsets.only(top: 16),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user!.photoURL ??
                'https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH=w240-h480-rw',
            onClicked: () {
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
          buildAbout('Phone Number', phoneController),
          const SizedBox(height: 16),
          buildAbout('About', aboutController),
        ],
      ),
    );
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

  Widget buildAbout(String label, TextEditingController controller) =>
      Container(
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
                label,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: controller,
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(border: InputBorder.none),
                readOnly: true,
              )
            ],
          ),
        ),
      );
}
