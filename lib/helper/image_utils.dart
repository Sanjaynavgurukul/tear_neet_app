// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageUtils {
//    File? _pickedImageFile;
//   final _imagePicker = ImagePicker();
//   void _pickedImage(source) async {
//     final pickedImage = await _imagePicker.pickImage(
//         source: source, imageQuality: 75, maxHeight: 1024, maxWidth: 1024);
//     debugPrint(
//         "----------Image Picker: Selected Image Path From Camera -----> ${pickedImage!.path}");
//     if (pickedImage == null) {
//       return;
//     }
//     setState(() {
//       _pickedImageFile = File(pickedImage.path);
//     });

//     print(_pickedImageFile);
//   }
// }