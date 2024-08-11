import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryOrangeColor = Color(0xffE4B34B);
  static const Color primaryOrangeColorDark = Color(0xffD19F3E);
  static const Color secondaryMangoColor = Color.fromRGBO(247, 164, 46, 1);
  static const Color lightPrimaryOrangeColor = Color.fromRGBO(255, 239, 224, 1);
  static const Color disableColor = Color.fromRGBO(231, 231, 231, 1);
  static const Color textFieldBGColor = Color.fromRGBO(247, 247, 247, 1);
  static const Color greyBGColor = Color.fromRGBO(252, 252, 252, 1);
  static const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.25);
  static const Color borderColor = Color.fromRGBO(229, 229, 229, 1);
  static const Color textFieldBorderColor = Color.fromRGBO(217, 217, 217, 1);
  static const Color paleSkyBlueColor = Color.fromRGBO(193, 225, 225, 1);
  static const Color lightBlueColor = Color.fromRGBO(105, 172, 239, 1);
  static const Color avocadoColor = Color.fromRGBO(135, 189, 54, 1);
  static const Color greenBGColor = Color.fromRGBO(135, 189, 54, 0.25);
  static const Color headingBlackColor = Color.fromRGBO(50, 50, 50, 1);
  static const Color bodyBlackColor = Color.fromRGBO(25, 25, 25, 1);
  static const Color bodyLightBlackColor = Color.fromRGBO(150, 150, 150, 1);
  static const Color grey = Color(0xFFC4C4C4);
  static const Color hintBlackColor = Color.fromRGBO(0, 0, 0, 0.3);
  static const Color whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color transparentColor = Colors.transparent;
  static const Color redColor = Colors.red;
  static const Color pinkColor = Color.fromRGBO(238, 175, 154, 1);
  static const Color lightPinkColor = Color.fromRGBO(255, 243, 234, 0.54);
  static const Color lightBrownColor = Color.fromRGBO(232, 219, 193, 1);
  static const Color blueLinkColor = Color.fromRGBO(47, 128, 237, 1);
  static const Color chattingBGColor = Color.fromRGBO(250, 245, 238, 1);
  static const Color chatSendCardColor = Color.fromRGBO(252, 236, 220, 1);
  static const Color walletGradiantTopColor = Color.fromRGBO(254, 224, 210, 1);
  static const Color blackColor = Colors.black;
  static const Color userIssueContainerBgColor =
      Color.fromRGBO(252, 240, 240, 1);
  static const Color blueBlack = Color(0xff2E3A59);
  static const Color tabUnselectedColor = Color(0xff222222);
  static const Color walletGradiantBottomColor =
      Color.fromRGBO(254, 233, 213, 1);
  static const Color bottomBarGradiantTopColor =
      Color.fromRGBO(255, 247, 238, 1);
  static const Color bottomBarGradiantBottomColor =
      Color.fromRGBO(255, 255, 255, 1);
  static const Color subTitleTextLightGrey = Color(0xff757575);
  static const Color goldColor = Color.fromRGBO(231, 168, 46, 1);

  // FONT-SIZES
  static double heading1 = 24;
  static double heading2 = 22;
  static double heading3 = 20;
  static double heading4 = 18;
  static double heading5 = 16;
  static double bodyText = 14;
  static double smallMediumText = 13;
  static double smallText = 12;
  static double verySmallText = 10;

  // status button color
  static Color statusButtonColor(int? status) {
    switch (status) {
      case 0:
        return disableColor;
      case 1:
        return avocadoColor;
      case 2:
        return primaryOrangeColor;
      default:
        return avocadoColor;
    }
  }

}

