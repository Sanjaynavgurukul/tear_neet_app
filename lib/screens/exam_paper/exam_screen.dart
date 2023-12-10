import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/screens/exam_paper/view_model/exam_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';
import 'package:tyarineetki/widget/custom_cashe_image.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  // late StreamSubscription _paperListSubscription;
  late ExamViewModel viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = context.watch<ExamViewModel>();
  }

  @override
  Widget build(BuildContext context) {
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
                  if (viewModel.currentQuestionPosition ==
                      viewModel.getData().length - 1) {
                    viewModel.showToast(
                        message: 'Last Question', context: context);
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
              'Total ${viewModel.getData().length} Question',
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.green),
            ),
          ],
        ),
        backgroundColor: AppColor.lightPrimaryOrangeColor,
        elevation: 0,
      ),
      body: mainView(viewModel.currentQuestionPosition),
    );
  }

  Widget mainView(int index) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            Map<String, dynamic> item =
                viewModel.getData()[viewModel.currentQuestionPosition];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item['question']}',
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                imageSection(item),
                const SizedBox(
                  height: 16,
                ),
                optionsItem(item, 0)
              ],
            );
          }),
    );
  }

  Widget optionsItem(Map<String, dynamic> item, int index) {
    List<String> options = item['options'];
    return Column(
      children: List.generate(options.length, (index) {
        String optionIndex = getAlphabet(index + 1);
        bool selected = item['submitAnswer'] == optionIndex;
        return InkWell(
          onTap: () {
            viewModel.updateAnswerQuestion(index: index, answer: optionIndex);
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
                    child: Text(
                  options[index],
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
      return SizedBox();
    }

    return Container(
      margin: EdgeInsets.only(top: 12),
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
