import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(
    {required BuildContext context,
    required Function() onBackPress,
    bool allowBack = true,
    Widget? title,
    Color backgroundColor = Colors.white,
    List<Widget>? actions,
    double elevation = 2}) {
  return AppBar(
    elevation: elevation,
    backgroundColor: backgroundColor,
    actions: actions,
    title: title,
    leading: !allowBack
        ? null
        : IconButton(
            onPressed: () {
              onBackPress();
            },
            icon: const Icon(CupertinoIcons.arrow_left_circle),
          ),
  );
}
