import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kayicho/models/bill.dart';
import 'package:kayicho/models/day.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  // collection reference
  final CollectionReference userDatabase =
      FirebaseFirestore.instance.collection('userDatabase');
  Future updateBillList(List<Bill> listbills) async {
    return await userDatabase.doc(uid).set({
      'listbills': listbills,
    });
  }

  Stream<DocumentSnapshot> get userData {
    return userDatabase.doc(uid).snapshots();
  }
}
