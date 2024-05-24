import 'package:core/core.dart';

class FirebaseDbProvider {
  Future<void> write(Map<String, dynamic> data, String collectionName) async {
    await FirebaseFirestore.instance.collection(collectionName).add(data);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> readAll(String collectionName) async {
    return FirebaseFirestore.instance.collection(collectionName).get();
  }
}
