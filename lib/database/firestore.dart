import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  // get collection of orders

  final CollectionReference orders = FirebaseFirestore.instance.collection("orders");

  // save orders to DB
Future<void> saveOrderToDatabase(String receipt) async {
  await orders.add({
    'date': DateTime.now(),
    'order': receipt

  });
}
}