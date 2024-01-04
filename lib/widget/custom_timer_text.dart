import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/time_helper.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_text.dart';
import 'package:tyarineetki/widget/timer_widget.dart';

class CustomTimerText extends StatelessWidget {
  const CustomTimerText({
    Key? key,
    required this.text,
    required this.timerSec,
    required this.onEnd,
    this.textType = TextType.BodyNormal,
    this.fontColor = AppColor.headingBlackColor,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.showLineThroughText = false,
    this.showUnderLineText = false,
  }) : super(key: key);

  final String text;
  final int timerSec;
  final void Function() onEnd;
  final Color fontColor;
  final TextType textType;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool showLineThroughText;
  final bool showUnderLineText;

  @override
  Widget build(BuildContext context) {
    if (timerSec <= 0) {
      return CustomText(
        text,
        textType: textType,
        fontColor: fontColor,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        showLineThroughText: showLineThroughText,
        showUnderLineText: showUnderLineText,
      );
    }

    return Countdown(
      controller: CountdownController(autoStart: true),
      seconds: timerSec,
      build: (_, Duration time) {
        // final minutes = time.inMinutes;
        // final seconds = time.inSeconds % 60;
        DHMS dhms = timeHelper.secToDHMS(time.inSeconds);
        return CustomText(
          '${dhms.hour}:${dhms.min}:${dhms.sec}',
          textType: textType,
          fontColor: fontColor,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          showLineThroughText: showLineThroughText,
          showUnderLineText: showUnderLineText,
        );
      },
      interval: Duration(milliseconds: 100),
      onFinished: onEnd,
    );
  }
}
