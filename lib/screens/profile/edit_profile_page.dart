import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/main.dart';
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
  late ProfileViewModel viewModel;
  final user = auth.currentUser;
  String? imageUrl;
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

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   viewModel = context.watch<ProfileViewModel>();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          context: context,
          elevation: 0,
          actions: [
            TextButton(onPressed: () {
              
            }, child: const Text('Save')),
            const SizedBox(
              width: 18,
            )
          ],
          onBackPress: () {
            Navigator.pop(context);
          }),
      // appBar: AppBar(
      //   elevation: 0,
      //   leading: IconButton(
      //       onPressed: () {}, icon: const Icon(Icons.keyboard_backspace)),
      //   actions: [
      //     TextButton(onPressed: () {}, child: const Text('Save')),
      //     const SizedBox(
      //       width: 18,
      //     )
      //   ],
      // ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: _pickedImageFile != null
                ? _pickedImageFile!.path
                : 'https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH=w240-h480-rw',
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
          TextFieldWidget(
            label: 'About',
            text: aboutController.text,
            maxLines: 5,
            onChanged: (about) {},
          ),
        ],
      ),
    );
  }
}
