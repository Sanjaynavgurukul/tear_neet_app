import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tyarineetki/theme/app_color.dart';

class AppTheme {
  ThemeData lightTheme() {
    return ThemeData(
      // useMaterial3: true,
      primaryColor: AppColor.primaryOrangeColor,
      scaffoldBackgroundColor: AppColor.whiteColor,
      fontFamily: 'WorkSans',
      // useMaterial3: true,
      appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
          // titleSpacing: 6,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent, // transparent status bar
            systemNavigationBarColor: Colors.transparent, // navigation bar color
            statusBarIconBrightness: Brightness.dark, // status bar icons' color
            systemNavigationBarIconBrightness: Brightness.dark,
          )),
      brightness: Brightness.light,
    );
  }
}
