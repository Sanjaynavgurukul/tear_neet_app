import 'package:cloud_firestore/cloud_firestore.dart';

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
}
