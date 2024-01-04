import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/model/paper_model.dart';

class ExamViewModel extends BaseViewModel {
  int currentQuestionPosition = 0;
  PaperModel? data;

  ExamViewModel();

  ExamViewModel.argument({required this.data});

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void updateIndex({required int index}) {
    currentQuestionPosition = index;
    notifyListeners();
  }

  void startExam(){
    repository.startExam();
  }

  List<Map<String, dynamic>> getData = [
    {
      'heading':'A flashing red traffic light signifies that a driver',
      "question":
          "A flashing red traffic light signifies that a driver should do what?",
      'correctMark': 4,
      'wrongMark': 1,
      'options': [
        {
          "content":
              "https://watermark.lovepik.com/photo/40128/4121.jpg_wh1200.jpg",
          "type": 'image'
        },
        {"content": "up", "type": 'text'},
        {"content": "proceed with caution", "type": 'text'},
        {"content": "honk the horn", "type": 'text'},
      ],
      'image': 'https://i.ytimg.com/vi/nxdd24V9BZo/maxresdefault.jpg',
      "answer": "A",
      "submitAnswer": "",
      'type': 'text'
    },
  ];

  void updateAnswerQuestion({required String answer}) {
    getData[currentQuestionPosition]['submitAnswer'] = answer;
    notifyListeners();
  }

  int calculateScore() {
    int count =
        getData.where((item) => item['answer'] == item['submitAnswer']).length;
    return count;
  }
}
