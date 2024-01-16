import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/dialog_helper.dart';
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
            getData();
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


  void getData()async{
   try{
     log('check doc id ---- ${viewModel.data!.id}');
     DialogHelper().showLoadingDialog(context: context);
     final QuerySnapshot result =
     await  FirebaseFirestore.instance.collection('papers').doc('${viewModel.data!.id}').collection('question').get();
     final List<DocumentSnapshot> documents = result.docs;
     List<Map<String,dynamic>> data = documents.map((e) => e.data() as Map<String,dynamic>).toList();

     DateTime dateTime = DateTime.now();
     pref.setTimer(value: dateTime.millisecondsSinceEpoch);
     viewModel.startExam();
     DialogHelper()
         .showInfodialog(
         context: context,
         heading: 'Start Exam',
         message:
         'You are about to start the exam once you start will can nt cancel until complete the exam.')
         .then((value) {
       if (value == null || !value) {
         return;
       }

       viewModel.startExam();
       Navigator.pop(context);
       NavigationHelper().navigatePush(
           context: context,
           viewModel: ExamViewModel.argument(data: viewModel.data,getData: data),
           screen: ExamScreen());
     });
   }catch (e){
     Navigator.pop(context);
     DialogHelper().showWarningDialog(context: context,message: 'No Data Found');
   }
  }
}
