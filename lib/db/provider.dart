import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/chat_group_model.dart';

class Provider {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<QuerySnapshot> gePaperList() {
    return FirebaseFirestore.instance
        .collection('papers')
        .snapshots();
  }

  Stream<QuerySnapshot> fetchNoteList() {
    return FirebaseFirestore.instance
        .collection('notes')
        .snapshots();
  }

  Stream<QuerySnapshot> fetchGroupList() {
    return FirebaseFirestore.instance
        .collection('conversation')
        .snapshots();
  }
  
  void addGroup(){
    _db.collection('conversation').add(ChatGroupModel().getData());
  }
}
