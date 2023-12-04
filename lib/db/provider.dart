import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
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

  Stream<QuerySnapshot> fetchLeaderBoardList() {
    return _db.collection('leaderboard').snapshots();
  }

  Stream<QuerySnapshot> fetchList({required String colId}) {
    return _db
        .collection(colId)
        .orderBy('createdAt', descending: true)
        .orderBy('timeStamp', descending: true)
        .snapshots();
  }

  Stream<DocumentSnapshot> fetchBannerImage() {
    return FirebaseFirestore.instance
        .collection('innerContent')
        .doc('banner')
        .snapshots();
  }

  Stream<DocumentSnapshot> getSubDetail() {
    return FirebaseFirestore.instance
        .collection('innerContent')
        .doc('subscription')
        .snapshots();
  }

  void updateMainGroup(
      {required Map<String, dynamic> body, required groupType}) {
    _db.collection('conversation').doc(groupType).update(body);
  }

  void addNewMessage({required Map<String, dynamic> body, required groupType}) {
    _db.collection(groupType).add(body);
  }

  void addGroup() {
    _db.collection('conversation').add(ChatGroupModel().getData());
  }

  Future<String> uploadImageToFirebase(File? pickedImageFile) async {
    if (pickedImageFile != null) {
      final storageRef = FirebaseStorage.instance.ref().child('user_image');
      await storageRef.putFile(pickedImageFile);
      final imageUrl = await storageRef.getDownloadURL();
      return imageUrl;
    }
    return '';
  }

  Future<void> saveUserDetail(
      {required Map<String, dynamic> data, required String userId}) async {
    try {
      _db.collection('userDetail').doc(userId).set(data);
    } catch (e) {
      print('Error saving data to Firestore: $e');
    }
  }

  Future<Map<String, dynamic>> fetchUserDetais({required String userId}) async {
    final DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _db.collection('userDetails').doc(userId).get();
    if (snapshot.exists) {
      return snapshot.data() ?? {};
    }
    return {};
  }
}
