import 'package:flutter/cupertino.dart';
import 'package:tyarineetki/theme/app_color.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    this.textType = TextType.BodyNormal,
    this.fontColor,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.showLineThroughText = false,
    this.showUnderLineText = false,
    this.letterSpacing = -0.25,
    this.height,
    this.fontStyle = FontStyle.normal,
    this.shouldTrim = true,
    Key? key,
  }) : super(key: key);

  final String? text;
  final Color? fontColor;
  final TextType textType;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool showLineThroughText;
  final bool showUnderLineText;
  final double letterSpacing;
  final double? height;
  final FontStyle fontStyle;
  final bool shouldTrim;

  @override
  Widget build(BuildContext context) {
    return Text(
      shouldTrim ? (text ?? '').trim() : (text ?? ''),
      textAlign: textAlign,
      style: TextStyle(
        fontSize: getFontSize(textType),
        color: fontColor ?? getFontColor(textType),
        fontWeight: getFontWeight(textType),
        height: height ?? 1.3,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        decoration: showLineThroughText
            ? TextDecoration.lineThrough
            : showUnderLineText
                ? TextDecoration.underline
                : null,
      ),
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  static double getFontSize(TextType textType) {
    switch (textType) {
      case TextType.VerySmallNormal:
      case TextType.VerySmallBold:
        return AppColor.verySmallText;
      case TextType.SmallNormal:
      case TextType.SmallBold:
        return AppColor.smallText;
      case TextType.SmallMediumNormal:
      case TextType.SmallMediumBold:
        return AppColor.smallMediumText;
      case TextType.BodyNormal:
      case TextType.BodyBold:
        return AppColor.bodyText;
      case TextType.Heading5:
      case TextType.Heading5Bold:
        return AppColor.heading5;
      case TextType.Heading4:
        return AppColor.heading4;
      case TextType.Heading3:
        return AppColor.heading3;
      case TextType.Heading2:
        return AppColor.heading2;
      case TextType.Heading1:
        return AppColor.heading1;
      default:
        return AppColor.bodyText;
    }
  }

  static Color getFontColor(TextType textType) {
    switch (textType) {
      case TextType.VerySmallNormal:
      case TextType.VerySmallBold:
      case TextType.SmallNormal:
      case TextType.SmallBold:
      case TextType.SmallMediumNormal:
      case TextType.SmallMediumBold:
      case TextType.BodyNormal:
      case TextType.BodyBold:
        return AppColor.bodyBlackColor;
      case TextType.Heading5:
      case TextType.Heading5Bold:
      case TextType.Heading4:
      case TextType.Heading3:
      case TextType.Heading2:
      case TextType.Heading1:
        return AppColor.headingBlackColor;
      default:
        return AppColor.bodyBlackColor;
    }
  }

  static getFontWeight(TextType textType) {
    switch (textType) {
      case TextType.VerySmallNormal:
      case TextType.SmallNormal:
      case TextType.SmallMediumNormal:
      case TextType.BodyNormal:
      case TextType.Heading5:
        return FontWeight.normal;
      case TextType.VerySmallBold:
      case TextType.SmallBold:
      case TextType.SmallMediumBold:
      case TextType.BodyBold:
      case TextType.Heading5Bold:
      case TextType.Heading4:
      case TextType.Heading3:
      case TextType.Heading2:
      case TextType.Heading1:
      default:
        return FontWeight.w600;
    }
  }
}

enum TextType {
  VerySmallNormal,
  VerySmallBold,
  SmallMediumNormal,
  SmallMediumBold,
  SmallNormal,
  SmallBold,
  BodyNormal,
  BodyBold,
  Heading5,
  Heading5Bold,
  Heading4,
  Heading3,
  Heading2,
  Heading1
}
