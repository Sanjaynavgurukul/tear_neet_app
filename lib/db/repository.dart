import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/db/provider.dart';

class Repository {
  final Provider _provider = Provider();

  Stream<QuerySnapshot> getPaperList() => _provider.gePaperList();

  Stream<QuerySnapshot> fetchNoteList() => _provider.fetchNoteList();

  Stream<QuerySnapshot> fetchGroupList() => _provider.fetchGroupList();
  void startExam() => _provider.startExam();

  Stream<DocumentSnapshot> getSubDetail() => _provider.getSubDetail();

  Stream<QuerySnapshot> fetchLeaderBoardList() =>
      _provider.fetchLeaderBoardList();

  Stream<QuerySnapshot> getSubjectList() =>
      _provider.getSubjectList();

  Stream<QuerySnapshot> fetchList({required String colId}) =>
      _provider.fetchList(colId: colId);

  void updateMainGroup(
          {required Map<String, dynamic> body, required groupType}) =>
      _provider.updateMainGroup(body: body, groupType: groupType);

  void addNewMessage(
          {required Map<String, dynamic> body, required groupType}) =>
      _provider.addNewMessage(body: body, groupType: groupType);

  Stream<DocumentSnapshot> fetchBannerImage() => _provider.fetchBannerImage();

  void newUser({required Map<String, dynamic> body, required String userId}) {
    _provider.newUser(body: body, userId: userId);
  }

  void updateUser({required Map<String, dynamic> body}) {
    _provider.updateUser(body: body);
  }

  Stream<QuerySnapshot> fetchLeads({required String docId}) =>
      _provider.fetchLeads(docId: docId);

  Stream<DocumentSnapshot> geUserDetail() => _provider.geUserDetail();
}
