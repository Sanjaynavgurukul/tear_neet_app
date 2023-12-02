import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';

class HomeViewModel extends BaseViewModel {

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  Stream<QuerySnapshot> fetchPaperList() {
    return repository.getPaperList();
  }

  Stream<QuerySnapshot> fetchNoteList() {
    return repository.fetchNoteList();
  }
}
