// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_field
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_tutorial/write_data_to_cloud_firestore_simple/class_rak_buku.dart';

// DATABASE SERVICEH

const String collectionName = 'rak-buku';

class ServiceRakBuku {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late final CollectionReference _rakBukuRef;

  // Constructor
  ServiceRakBuku() {
    _rakBukuRef = _firestore
        .collection(collectionName)
        .withConverter<ClassBuku>(
          // kalo rak-buku disini jadinya hardcode
          fromFirestore: (snapshot, _) => ClassBuku.fromJson(snapshot.data()!),
          toFirestore: (rakBuku, _) => rakBuku.toJSon(),
        );
  }

  // Services

  // Add data
  // void untuk return null
  Future<void> addBuku(ClassBuku buku) async {
    await _rakBukuRef.add(buku);
  }
}
