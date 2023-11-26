import 'package:flutter/material.dart';
import 'package:tyarineetki/theme/app_color.dart';

class AppGradient {
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[AppColor.primaryOrangeColor, AppColor.secondaryMangoColor],
  );

  static const LinearGradient reversePrimaryGradient = LinearGradient(
    begin: Alignment.center,
    end: Alignment.centerRight,
    colors: <Color>[AppColor.secondaryMangoColor, AppColor.primaryOrangeColor],
  );

  static const LinearGradient pinkGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      AppColor.walletGradiantTopColor,
      AppColor.walletGradiantBottomColor
    ],
  );

  static const LinearGradient walletAppBarGradiant = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      AppColor.walletGradiantTopColor,
      AppColor.walletGradiantBottomColor
    ],
  );

  static const LinearGradient bottomBarGradiant = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      AppColor.bottomBarGradiantTopColor,
      AppColor.bottomBarGradiantBottomColor
    ],
  );
}
