import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

class ExamViewModel extends BaseViewModel {
  int currentQuestionPosition = 0;
  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  void updateIndex({required int index}){
    currentQuestionPosition = index;
    notifyListeners();
  }

  List<Map<String, dynamic>> getData = [
    {
      "question":
      "A flashing red traffic light signifies that a driver should do what?",
      'options': [
        "stop",
        "speed up",
        "proceed with caution",
        "honk the horn",
      ],
      'image':'https://i.ytimg.com/vi/nxdd24V9BZo/maxresdefault.jpg',
      "answer": "A",
      "submitAnswer": "",
      'type': 'text'
    },
    {
      "question": "A knish is traditionally stuffed with what filling?",
      'options': [
        "potato",
        "creamed corn",
        "lemon custard",
        "raspberry jelly",
      ],
      'image':'',
      "answer": "A",
      "submitAnswer": "",
      'type': 'text'
    },
    {
      "question": "A pita is a type of what?",
      'options': [
        "fresh fruit",
        "flat bread",
        "French tart",
        "friend bean dip",
      ],
      'image':'',
      "answer": "B",
      "submitAnswer": "",
      'type': 'text'
    },
    {
      "question":
      "A portrait that comically exaggerates a person's physical traits is called a what?",
      'options': [
        "landscape",
        "caricature",
        "still life",
        "Impressionism",
      ],
      'image':'',
      "answer": "B",
      "submitAnswer": "",
      'type': 'text'
    }
  ];

  void updateAnswerQuestion({ required String answer}) {
    getData[currentQuestionPosition]['submitAnswer'] = answer;
    notifyListeners();
  }

  int calculateScore(){
    int count = getData.where((item) => item['answer'] == item['submitAnswer']).length;
    return count;
  }
}
