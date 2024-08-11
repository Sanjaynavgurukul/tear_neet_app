import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyarineetki/model/User.dart';
import 'package:tyarineetki/model/active_sub_model.dart';

class Utils {
  String? userId = FirebaseAuth.instance.currentUser?.uid;
  CurrentUser? user;

  Future<bool> hasSubscription() async {
    final documentReference = FirebaseFirestore.instance
        .collection('subscription')
        .doc('${util.userId}');

    try {
      final documentSnapshot = await documentReference.get();
      if (!documentSnapshot.exists) {
        log('demo ---- 5 --- true');
        return false;
      }

      ActiveSubModel activeSubModel = ActiveSubModel.fromJson(
          documentSnapshot.data() as Map<String, dynamic>);

      DateTime? dateTime = activeSubModel.create_at;
      if (dateTime == null) {
        log('demo ---- 4 --- true');
        return false;
      }

      log('demo ---- 6 --- ${dateTime.toIso8601String()}');
      bool expired = dateTime.isBefore(DateTime.now().subtract(const Duration(days: 30)));
      if (expired) {
        log('demo ---- 1 --- true');
        return false;
      }
      log('demo ---- 2 --- true');
      return true;
    } catch (e) {
      log('demo ---- 3 ---- ${e.toString()}');
      return false;
    }
  }
}

final util = Utils();
