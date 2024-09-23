import 'package:cloud_firestore/cloud_firestore.dart';

class Firestoreservice {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Firestoreservice();

  FirebaseFirestore getDb() {
    return _db;
  }
}
