import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final int type;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.type,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    log('check demo image ----2 ----- $imagePath ---- $type');
    return type == 1
        ? CustomCacheImage(
            imageUrl: imagePath,
            width: 128,
            height: 128,
            borderRadius: BorderRadius.circular(100),
          )
        : ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: FileImage(File(imagePath)),
                fit: BoxFit.cover,
                width: 128,
                height: 128,
                child: const SizedBox(),
              ),
            ),
          );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
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
        onTap: onClicked,
        child: ClipOval(
          child: Container(
            padding: EdgeInsets.all(all),
            color: color,
            child: child,
          ),
        ),
      );
}
