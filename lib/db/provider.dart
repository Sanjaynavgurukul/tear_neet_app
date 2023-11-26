import 'package:cloud_firestore/cloud_firestore.dart';

class Provider {
 final FirebaseFirestore db = FirebaseFirestore.instance;

 // Stream<QuerySnapshot> getPaperRank({required String paperType}){
 //  return db.collection('paperRank').doc(paperType).snapshots()
 // }
}