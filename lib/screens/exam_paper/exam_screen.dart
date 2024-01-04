import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
import 'package:tyarineetki/helper/time_helper.dart';
import 'package:tyarineetki/screens/exam_paper/view_model/exam_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';
import 'package:tyarineetki/widget/custom_text.dart';
import 'package:tyarineetki/widget/custom_timer_text.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  // late StreamSubscription _paperListSubscription;
  late ExamViewModel viewModel;

  int minutes = 120; // Set your desired countdown time in minutes
  late Timer _timer;
  int secondsRemaining = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secondsRemaining = minutes * 60;
    startTimer();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<ExamViewModel>();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        secondsRemaining--;
        log('check timer ---- ${formatTime(secondsRemaining)}');
      } else {
        _timer.cancel();
        // Do something when the timer reaches zero
      }
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds < 10 ? '0' : ''}$remainingSeconds';
  }

  @override
  Widget build(BuildContext context) {
    return main();
  }

  Widget main() {
    Map<String, dynamic> item =
        viewModel.getData[viewModel.currentQuestionPosition];
    bool answered = item['submitAnswer'].isNotEmpty;
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  if (viewModel.currentQuestionPosition == 0) {
                    viewModel.showToast(
                        message: 'First Question', context: context);
                    return;
                  }

                  viewModel.updateIndex(
                      index: viewModel.currentQuestionPosition -= 1);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    'Back',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: InkWell(
                onTap: () {
                  if (!answered) {
                    viewModel.showToast(
                        message: 'Select Option', context: context);
                    return;
                  }
                  if (viewModel.currentQuestionPosition ==
                      viewModel.getData.length - 1) {
                    DialogHelper().endExamDialog(context: context, data: {});
                    viewModel.showToast(
                        message:
                            'Correct answer is ${viewModel.calculateScore()}/${viewModel.getData.length}',
                        context: context);
                    return;
                  }

                  viewModel.updateIndex(
                      index: viewModel.currentQuestionPosition += 1);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.primaryOrangeColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    'Next Question',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'NEET',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              'Total ${viewModel.getData.length} Question',
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.green),
            ),
          ],
        ),
        backgroundColor: AppColor.lightPrimaryOrangeColor,
        elevation: 0,
        actions: [
          Align(alignment: Alignment.center, child: displayTimer()),
          const SizedBox(
            width: 12,
          )
        ],
      ),
      body: mainView(item),
    );
  }

  Widget displayTimer() {
    return FutureBuilder<int?>(
      future: pref.getTimer(), // async work
      builder: (BuildContext context, AsyncSnapshot<int?> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Text('00:00');
          default:
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              if(snapshot.data == null || snapshot.data! == 0){
                DialogHelper().showWarningDialog(context: context,message: 'Time out Please Try Again Later').then((value){
                  Navigator.pop(context);
                });
                return const SizedBox();
              }

              DateTime startTime = DateTime.fromMillisecondsSinceEpoch(snapshot.data!);
              DateTime endTime = startTime.add(Duration(minutes: 200));
              int second = endTime.difference(DateTime.now()).inSeconds;
              return CustomTimerText(
                  text: "",
                  timerSec: second??0,
                  onEnd: () {},
                  textType: TextType.Heading1);
            }
        }
      },
    );
  }

  Widget mainView(Map<String, dynamic> item) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, inrr) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Html(
                  data: '${item['question']}',
                  style: {
                    '*': Style(padding: HtmlPaddings.zero, margin: Margins.zero)
                  },
                ),
                imageSection(item),
                const SizedBox(
                  height: 16,
                ),
                optionsItem(item, viewModel.currentQuestionPosition)
              ],
            );
          }),
    );
  }

  Widget optionsItem(Map<String, dynamic> data, int index) {
    List<Map<String, dynamic>> options = data['options'];
    return Column(
      children: List.generate(options.length, (index) {
        String optionIndex = getAlphabet(index + 1);
        bool selected = data['submitAnswer'] == optionIndex;
        Map<String, dynamic> item = options[index];
        return InkWell(
          onTap: () {
            viewModel.updateAnswerQuestion(answer: optionIndex);
          },
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            margin: const EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    width: 1,
                    color: selected
                        ? AppColor.primaryOrangeColor
                        : Colors.grey.shade300)),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 16, right: 16),
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(
                    color: selected
                        ? AppColor.primaryOrangeColor
                        : Colors.grey.shade300,
                  ))),
                  child: Text(
                    optionIndex,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: item['type'] == 'image'
                        ? CustomCacheImage(
                            imageUrl: item['content'],
                            borderRadius: BorderRadius.zero,
                            height: 50,
                          )
                        : Text(
                            item['content'],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ))
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget imageSection(Map<String, dynamic> item) {
    String? img = item['image'];
    if (img == null || img.isEmpty) {
      return const SizedBox();
    }

    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: CustomCacheImage(
        imageUrl: img,
        height: 200,
        width: double.infinity,
      ),
    );
  }

  String getAlphabet(int number) {
    if (number < 1 || number > 26) {
      return 'Invalid number';
    }

    // Assuming a 1-based index
    int asciiValue = number + 64;
    return String.fromCharCode(asciiValue);
  }
}
