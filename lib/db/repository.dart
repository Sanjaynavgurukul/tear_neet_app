import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/db/provider.dart';

class Repository {
  final Provider _provider = Provider();

  Stream<QuerySnapshot> getPaperList() => _provider.gePaperList();

  Stream<QuerySnapshot> fetchNoteList() => _provider.fetchNoteList();

  Stream<QuerySnapshot> fetchGroupList() => _provider.fetchGroupList();

  void updateMainGroup(
          {required Map<String, dynamic> body, required groupType}) =>
      _provider.updateMainGroup(body: body, groupType: groupType);

  void addNewMessage(
          {required Map<String, dynamic> body, required groupType}) =>
      _provider.addNewMessage(body: body, groupType: groupType);
}
