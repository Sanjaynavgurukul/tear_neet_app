import 'dart:io';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
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
    return imagePath.isNotEmpty && imagePath.substring(0, 5) == "https"
        ? ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
                width: 128,
                height: 128,
                child: InkWell(onTap: onClicked),
              ),
            ),
          )
        : ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: FileImage(File(imagePath)),
                fit: BoxFit.cover,
                width: 128,
                height: 128,
                child: InkWell(onTap: onClicked),
              ),
            ),
          );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: isEdit
            ? buildCircle(
                color: color,
                all: 8,
                child: const Icon(
                  Icons.add_a_photo,
                  color: Colors.white,
                  size: 20,
                ),
              )
            : const SizedBox(),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
