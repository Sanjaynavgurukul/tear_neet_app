import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/db/provider.dart';
import 'package:tyarineetki/model/user_model.dart';

class Repository {
  final Provider _provider = Provider();

  Stream<QuerySnapshot> getPaperList() => _provider.gePaperList();

  Stream<QuerySnapshot> fetchNoteList() => _provider.fetchNoteList();

  Stream<QuerySnapshot> fetchGroupList() => _provider.fetchGroupList();
  Stream<DocumentSnapshot> getSubDetail() => _provider.getSubDetail();

  Stream<QuerySnapshot> fetchLeaderBoardList() =>
      _provider.fetchLeaderBoardList();

  Stream<QuerySnapshot> fetchList({required String colId}) =>
      _provider.fetchList(colId: colId);

  void updateMainGroup(
          {required Map<String, dynamic> body, required groupType}) =>
      _provider.updateMainGroup(body: body, groupType: groupType);

  void addNewMessage(
          {required Map<String, dynamic> body, required groupType}) =>
      _provider.addNewMessage(body: body, groupType: groupType);

  Stream<DocumentSnapshot> fetchBannerImage() => _provider.fetchBannerImage();

  Future<String> uploadImageToFirebase({required File? pickedImageFile}) =>
      _provider.uploadImageToFirebase(pickedImageFile);

  Future<void> saveUserDetails(
          {required Map<String, dynamic> data, required String userId}) =>
      _provider.saveUserDetail(data: data, userId: userId);

  Future<UserModel> fetchUserDetails({required String userId}) =>
      _provider.fetchUserDetais(userId: userId);
}
