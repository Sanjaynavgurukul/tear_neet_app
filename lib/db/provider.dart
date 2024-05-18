import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/db/share_pref.dart';
import 'package:tyarineetki/helper/utils.dart';
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

  Stream<QuerySnapshot> getSubjectList() {
    return _db.collection('subject').snapshots();
  }

  Stream<QuerySnapshot> getChapterList({required String chapterId}) {
    return _db.collection('subject').doc(chapterId).collection('chapters').snapshots();
  }

  Stream<QuerySnapshot> fetchList({required String colId}) {
    return _db
        .collection(colId)
        .orderBy('createdAt', descending: true)
        .orderBy('timeStamp', descending: true)
        .snapshots();
  }

  Stream<QuerySnapshot> fetchLeads({required String docId}) {
    return _db
        .collection('leaderboard')
        .doc(docId)
        .collection('leadData')
        .snapshots();
  }

  Stream<DocumentSnapshot> fetchBannerImage() {
    return FirebaseFirestore.instance
        .collection('innerContent')
        .doc('banner')
        .snapshots();
  }
  Stream<DocumentSnapshot> fetchUpcomingFeature() {
    return FirebaseFirestore.instance
        .collection('innerContent')
        .doc('upcomingFeature')
        .snapshots();
  }

  Stream<QuerySnapshot> fetchSubjectSubscription() {
    return FirebaseFirestore.instance
        .collection('subject_subscription').where('userId',isEqualTo: util.userId)
        .snapshots();
  }

  Stream<DocumentSnapshot> getSplashImage() {
    return FirebaseFirestore.instance
        .collection('innerContent')
        .doc('splashImage')
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

  void newUser({required Map<String, dynamic> body, required String userId}) {
    util.userId = userId;
    _db.collection('users').doc(userId).set(body);
  }

  void updateUser({required Map<String, dynamic> body}) {
    log('cehck user iddd ----- ${body}');
    log('cehck user iddd -----2---- ${util.userId}');
    _db.collection('users').doc(util.userId).update(body);
  }

  void startExam() {
    _db
        .collection('users')
        .doc(util.userId)
        .update({'examStartTimme': pref.getTimer()});
  }

  Stream<DocumentSnapshot> geUserDetail() {
    return FirebaseFirestore.instance
        .collection('users')
        .doc('${util.userId}')
        .snapshots();
  }

  Future<DocumentReference?> saveSub(
      {required Map<String, dynamic> body}) async {
    final FirebaseFirestore db = FirebaseFirestore.instance;

    return db
        .collection('subscription')
        .add(body)
        .then((DocumentReference document) {
      return document;
    }).catchError((e) {
      return null;
    });
  }
}
