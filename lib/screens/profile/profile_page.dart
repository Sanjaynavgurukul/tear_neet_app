// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/helper/utils.dart';
import 'package:tyarineetki/model/User.dart';
import 'package:tyarineetki/screens/login/login_screen.dart';
import 'package:tyarineetki/screens/login/view_model/login_view_model.dart';
import 'package:tyarineetki/screens/profile/edit_profile_page.dart';
import 'package:tyarineetki/screens/profile/view_model/profile_view_model.dart';
import 'package:tyarineetki/screens/subscription/subscription.dart';
import 'package:tyarineetki/screens/subscription/view_model/subscription_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/appbar_widget.dart';
import 'package:tyarineetki/widget/button_widget.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';
import 'package:tyarineetki/widget/read_more.dart';

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
                  NavigationHelper().navigatePush(
                      context: context,
                      viewModel:
                          ProfileViewModel.dynamic(currentUser: util.user),
                      screen: const EditProfilePage());
                },
                icon: const Icon(Icons.edit)),
            IconButton(
                onPressed: () async {
                  bool? status = await openLogOutDialog();
                  if (status == null) {
                    return;
                  }

                  if (!status) {
                    return;
                  }

                  DialogHelper().showLoadingDialog(context: context);
                  FirebaseAuth.instance.signOut();
                  Navigator.pop(context);
                  NavigationHelper().navigatePushAndRemoveUntil(
                      context: context,
                      viewModel: LoginViewModel(),
                      screen: const LoginScreen());
                },
                icon: const Icon(Icons.exit_to_app)),
            const SizedBox(
              width: 18,
            )
          ],
          onBackPress: () {
            Navigator.pop(context);
          }),
      body: mainView(),
    );
  }

  Widget mainView() {
    return Container(
      child: StreamBuilder(
          stream: viewModel.fetchProfile(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const Material(
                color: Colors.white,
                child: Center(
                  child: CupertinoActivityIndicator(),
                ),
              );
            }

            if (snapshot.hasError) {
              return const SizedBox(
                child: Center(
                  child: Text('No Profile Found'),
                ),
              );
            }

            if (!snapshot.hasData) {
              return const Material(
                color: Colors.white,
                child: SizedBox(
                  child: Center(
                    child: Text('No Profile Found'),
                  ),
                ),
              );
            }

            Map<String, dynamic> json =
                snapshot.data!.data() as Map<String, dynamic>;
            CurrentUser user = CurrentUser.fromJson(json);
            util.user = user;

            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: 128,
                    height: 128,
                    child: CustomCacheImage(
                        borderRadius: BorderRadius.circular(100),
                        imageUrl: user.profile),
                  ),
                  const SizedBox(height: 24),
                  buildName(user.name!, '${user.email}'),
                  const SizedBox(height: 24),
                  Center(child: buildUpgradeButton()),
                  const SizedBox(height: 48),
                  if (user.phone == null || user.phone!.isNotEmpty)
                    buildAbout('Phone Number', value: '+91-${user.phone}'),
                  const SizedBox(height: 16),
                  buildAbout('About', value: user.bio),
                ],
              ),
            );
          }),
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

  Future<bool?> openLogOutDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            contentPadding: const EdgeInsets.all(0),
            content: Container(
              width: 300.0,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 100),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        color: AppColor.primaryOrangeColor.withOpacity(0.1)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.warning_rounded,
                        color: AppColor.primaryOrangeColor,
                        size: 80,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text('LOG OUT',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const Padding(
                      padding: EdgeInsets.only(
                          top: 8, bottom: 8, left: 16, right: 16),
                      child: Text(
                          // 'You are about to log out of the application. This will stop all current activities and you\'ll need to log in again to access your data.',
                          "Are you sure you don't want to find your life guide here?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14))),
                  const SizedBox(height: 14),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, false);
                    },
                    child: Container(
                        constraints: const BoxConstraints(minWidth: 200),
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColor.primaryOrangeColor,
                        ),
                        child: const Text('Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16))),
                  ),
                  const SizedBox(height: 6),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, true);
                    },
                    child: Container(
                        constraints: const BoxConstraints(minWidth: 200),
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.grey.shade200,
                        ),
                        child: const Text('Confirm',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 14))),
                  ),
                  const SizedBox(height: 28),
                ],
              ),
            ),
          );
        });
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

  Widget buildAbout(String label, {String? value}) => Container(
        width: double.infinity,
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
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              value != null && value.isNotEmpty
                  ? SizedBox(
                      key: const Key('showMore'),
                      child: ReadMoreText(
                        '${value}',
                        trimLines: 3,
                        preDataText: "",
                        preDataTextStyle:
                            const TextStyle(fontWeight: FontWeight.w500),
                        style: const TextStyle(color: Colors.black),
                        colorClickableText: AppColor.primaryOrangeColor,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: ' See More',
                        trimExpandedText: ' show less',
                      ),
                    )
                  : const Text(
                      'NO BIO AVAILABLE',
                      style: TextStyle(fontSize: 16, height: 1.4),
                    ),
            ],
          ),
        ),
      );
}
