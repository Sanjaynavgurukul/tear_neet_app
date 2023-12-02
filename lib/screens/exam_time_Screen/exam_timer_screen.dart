import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
import 'package:tyarineetki/screens/exam_time_Screen/view_model/exam_timer_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/timer_widget.dart';

class ExamTimerScreen extends StatefulWidget {
  const ExamTimerScreen({super.key});

  @override
  State<ExamTimerScreen> createState() => _ExamTimerScreenState();
}

class _ExamTimerScreenState extends State<ExamTimerScreen> {
    late ExamTimerViewModel viewModel;

    @override
    void initState() {
      // TODO: implement initState
      super.initState();
    }

    @override
    void didChangeDependencies() {
      super.didChangeDependencies();
      viewModel = context.watch<ExamTimerViewModel>();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [timerSection()],
        ),
      );
    }

    Widget timerSection() {
      return FutureBuilder(
          future: viewModel.getTimerInSecond(),
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.connectionState == ConnectionState.none ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox();
            }

            if (!snapshot.hasData) {
              return SizedBox();
            }

            return Container(
                color: AppColor.lightPrimaryOrangeColor,
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
                child: Countdown(
                  controller: CountdownController(autoStart: true),
                  seconds: snapshot.data ?? 0,
                  build: (_, Duration time) {
                    final minutes = time.inMinutes;
                    final seconds = time.inSeconds % 60;
                    return Text('$minutes:$seconds');
                  },
                  interval: Duration(milliseconds: 100),
                  onFinished: () {},
                ));
          });
      ;
    }
}
