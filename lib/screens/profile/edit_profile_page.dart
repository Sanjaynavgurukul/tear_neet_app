import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/main.dart';
import 'package:tyarineetki/model/user_model.dart';
import 'package:tyarineetki/screens/profile/view_model/profile_view_model.dart';
import 'package:tyarineetki/widget/appbar_widget.dart';
import 'package:tyarineetki/widget/profile_widget.dart';
import 'package:tyarineetki/widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final aboutController = TextEditingController();
  final phoneController = TextEditingController();
  late ProfileViewModel viewModel;
  final user = auth.currentUser;

  // String? imageUrl;
  File? _pickedImageFile;
  final _imagePicker = ImagePicker();
  void _pickedImage(source) async {
    final pickedImage = await _imagePicker.pickImage(
        source: source, imageQuality: 75, maxHeight: 1024, maxWidth: 1024);
    debugPrint(
        "----------Image Picker: Selected Image Path From Camera -----> ${pickedImage!.path}");
    if (pickedImage == null) {
      return;
    }
    setState(() {
      _pickedImageFile = File(pickedImage.path);
    });

    print(_pickedImageFile);
    // viewModel.uploadImageToFirebase(pickedImageFile: _pickedImageFile);
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
              TextButton(
                  onPressed: () async {
                    final imageUrl = await viewModel.uploadImageToFirebase(
                        pickedImageFile: _pickedImageFile);

                    print("this sis the image url ---->> $imageUrl");

                    UserModel updatedUserModel = UserModel(
                        userName: user!.displayName!,
                        userEmailId: user!.email!,
                        aboutUs: aboutController.text,
                        phoneNumber: phoneController.text,
                        imageUrl: imageUrl);

                    Map<String, dynamic> data = updatedUserModel.toMap();

                    

                    final userId = user!.uid;

                    viewModel.saveUserDetails(data: data, userId: userId);

                    await user!.updateDisplayName(user!.displayName);
                    await user!.updateEmail(user!.email!);
                    await user!.updatePhotoURL(imageUrl);
                    await user!.reload();
                    viewModel.update();

                    Navigator.of(context).pop();
                  },
                  child: const Text('Save')),
              const SizedBox(
                width: 18,
              )
            ],
            onBackPress: () {
              Navigator.pop(context);
            }),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: _pickedImageFile != null
                  ? _pickedImageFile!.path
                  : user!.photoURL ?? '',
              isEdit: true,
              onClicked: showImagePicker,
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user!.displayName!,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user!.email!,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Phone Number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      phoneController.text = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: aboutController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  maxLines: 5,
                  onChanged: (value) {
                    setState(() {
                      aboutController.text = value;
                    });
                  },
                ),
              ],
            )
          ],
        ));
  }
}
