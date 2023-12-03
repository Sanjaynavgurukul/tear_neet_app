import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/db/provider.dart';

class Repository {
  final Provider _provider = Provider();

  Stream<QuerySnapshot> getPaperList() => _provider.gePaperList();
  Stream<QuerySnapshot> fetchNoteList() => _provider.fetchNoteList();
  Stream<QuerySnapshot> fetchBannerImage() => _provider.fetchBannerImage();
}
