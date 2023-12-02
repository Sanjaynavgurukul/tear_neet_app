import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/chat_group_model.dart';

class Provider {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<QuerySnapshot> gePaperList() {
    return _db.collection('papers').snapshots();
  }

  Stream<QuerySnapshot> fetchNoteList() {
    return _db.collection('notes').snapshots();
  }

  Stream<QuerySnapshot> fetchGroupList() {
    return _db.collection('conversation').snapshots();
  }

  void updateMainGroup(
      {required Map<String, dynamic> body, required groupType}) {
    _db.collection('conversation').doc(groupType).update(body);
  }

  void addNewMessage({required Map<String, dynamic> body, required groupType}) {
    _db.collection('conversation').doc(groupType).collection('chats').add(body);
  }

  void addGroup() {
    _db.collection('conversation').add(ChatGroupModel().getData());
  }
}
