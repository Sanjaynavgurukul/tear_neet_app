import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/helper/navigation_helper.dart';
import 'package:tyarineetki/model/paper_model.dart';
import 'package:tyarineetki/screens/exam_paper/exam_screen.dart';
import 'package:tyarineetki/screens/exam_paper/view_model/exam_view_model.dart';
import 'package:tyarineetki/theme/app_color.dart';

class ExamDetailPage extends StatefulWidget {
  const ExamDetailPage({super.key});

  @override
  State<ExamDetailPage> createState() => _ExamDetailPageState();
}

class _ExamDetailPageState extends State<ExamDetailPage> {
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
    if (viewModel.data == null) {
      return const Material(
        color: Colors.white,
        child: Center(
          child: Text('No Detail Found'),
        ),
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColor.primaryOrangeColor,
          onPressed: () {
            NavigationHelper().navigatePush(
                context: context,
                viewModel: ExamViewModel.argument(data: viewModel.data),
                screen: ExamScreen());
          },
          label: const Text('Start Test Now')),
      appBar: AppBar(
        backgroundColor: AppColor.transparentColor,
        elevation: 0,
      ),
      body: mainView(),
    );
  }

  Widget mainView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${viewModel.data!.paperTitle}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Time : ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '${viewModel.data!.totalTime} minutes',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Questions : ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '${viewModel.data!.totalQuestion}',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Text Instruction',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
            Text(
              '${viewModel.data!.details}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 20,
            ),
            mainList()
          ],
        ),
      ),
    );
  }

  Widget mainList() {
    if (viewModel.data!.syllabus == null) {
      return const SizedBox();
    }

    return Column(
      children: List.generate(viewModel.data!.syllabus!.length, (index) {
        PaperModelSyllabus item = viewModel.data!.syllabus![index];
        return itemCard(item,
            wantBottomBorder: (index + 1) == viewModel.data!.syllabus!.length);
      }),
    );
  }

  Widget itemCard(PaperModelSyllabus item, {bool wantBottomBorder = true}) {
    return Container(
      decoration: BoxDecoration(
          border: wantBottomBorder
              ? Border.all(width: 1, color: Colors.black)
              : const Border(
                  left: BorderSide(width: 1, color: Colors.black),
                  right: BorderSide(width: 1, color: Colors.black),
                  top: BorderSide(width: 1, color: Colors.black))),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  border:
                      Border(right: BorderSide(width: 1, color: Colors.black))),
              child: Text('${item.label}'),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Text(
                '${item.value}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}