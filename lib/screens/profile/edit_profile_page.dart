import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/screens/profile/view_model/profile_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/appbar_widget.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';
import 'package:tyarineetki/widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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

  String? imageUrl;
  XFile? selectedImage;
  final _imagePicker = ImagePicker();

  void _pickedImage(source) async {
    XFile? pickedImage = await _imagePicker.pickImage(
        source: source, imageQuality: 75, maxHeight: 1024, maxWidth: 1024);
    if (pickedImage == null) {
      return;
    }

    viewModel.pictureType == 2;
    selectedImage = pickedImage;
    viewModel.update();
    // DialogHelper().showLoadingDialog(context: context);
    // Navigator.pop(context);
    // await Future.delayed(const Duration(seconds: 1));
    // setState(() {});

    log('check demo image ---- ${selectedImage!.path}');
  }

  Future<void> uploadImageToFirebase() async {
    // if (_pickedImageFile != null) {
    //   final storageRef = FirebaseStorage.instance.ref().child('user_image');
    //   storageRef.putFile(_pickedImageFile!);
    //   final imageUrl = storageRef.getDownloadURL();
    //
    //   print(imageUrl);
    // }
  }

  Future<void> showImagePicker() {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        )),
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
              child: Material(
            child: SizedBox(
              height: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _pickedImage(ImageSource.camera);
                      Navigator.of(context).pop();
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt_outlined,
                            size: 30, color: Colors.black),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Camera",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      _pickedImage(ImageSource.gallery);
                      Navigator.of(context).pop();
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.photo, size: 30, color: Colors.black),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Gallery",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(
            context: context,
            elevation: 0,
            actions: [
              TextButton(
                  onPressed: () {
                    viewModel.updateProfilePicture(context: context);
                  },
                  child: const Text('Save')),
              const SizedBox(
                width: 18,
              )
            ],
            onBackPress: () {
              Navigator.pop(context);
            }),
        body: mainView());
  }

  Widget mainView() {
    if (viewModel.currentUser == null) {
      return const Center(
        child: Text('No Profile Found'),
      );
    }

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      physics: const BouncingScrollPhysics(),
      children: [
        imageSection(),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: 'Full Name',
          text: viewModel.currentUser!.name!,
          change: (name) {
            viewModel.currentUser!.name = name;
          },
        ),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: 'Phone Number',
          text: viewModel.currentUser!.phone!,
          change: (phone) {
            viewModel.currentUser!.phone = phone;
          },
        ),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: 'About',
          text: viewModel.currentUser!.bio!,
          maxLines: 7,
          change: (about) {
            viewModel.currentUser!.bio = about;
          },
        ),
      ],
    );
  }

  Widget imageSection() {
    return SizedBox(
      width: 128,
      height: 128,
      child: Stack(
        alignment: Alignment.center,
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 0,
            child: buildEditIcon(),
          ),
        ],
      ),
    );
    // return ProfileWidget(
    //   type: pictureType,
    //   imagePath: pictureType == 2
    //       ? selectedImage!.path
    //       : viewModel.currentUser!.profile ??
    //           'https://www.pngitem.com/pimgs/m/30-307416_profile-icon-png-image-free-download-searchpng-employee.png',
    //   onClicked: showImagePicker,
    // );
  }

  Widget buildImage() {
    return viewModel.pictureType == 1
        ? CustomCacheImage(
            imageUrl: viewModel.currentUser!.profile,
            width: 128,
            height: 128,
            borderRadius: BorderRadius.circular(100),
          )
        : selectedImage == null
            ? CustomCacheImage(
                imageUrl: viewModel.currentUser!.profile,
                width: 128,
                height: 128,
                borderRadius: BorderRadius.circular(100),
              )
            : ClipOval(
                child: Material(
                    color: Colors.transparent,
                    child: Image.file(File(selectedImage!.path))),
              );
  }

  Widget buildEditIcon() => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: AppColor.primaryOrangeColor,
          all: 8,
          child: const Icon(
            Icons.add_a_photo,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      InkWell(
        onTap: showImagePicker,
        child: ClipOval(
          child: Container(
            padding: EdgeInsets.all(all),
            color: color,
            child: child,
          ),
        ),
      );
}
