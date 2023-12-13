import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tyarineetki/helper/base_view_model.dart';
import 'package:tyarineetki/model/leaderboard_list_model.dart';

class LeaderBoardViewModel extends BaseViewModel {
  LeaderBoardListModel? data;

  LeaderBoardViewModel();

  LeaderBoardViewModel.argument({required this.data});

  @override
  void showToast({required String message, required BuildContext context}) {
    super.displayToastMessage(message: message, context: context);
  }

  Stream<QuerySnapshot> fetchLeaderBoardList() {
    return repository.fetchLeaderBoardList();
  }

  Stream<QuerySnapshot> fetchLeads() {
    return repository.fetchLeads(docId: data!.id!);
  }
}
