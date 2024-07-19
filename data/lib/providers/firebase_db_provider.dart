import 'package:core/core.dart';

class FirebaseDbProvider {
  Future<void> write(Map<String, dynamic> data, String collectionName) async {
    await FirebaseFirestore.instance.collection(collectionName).add(data);
  }
  Future<void> update(Map<String, dynamic> data, String collectionName, String documentId) async {
    await FirebaseFirestore.instance.collection(collectionName).doc(documentId).update(data);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAll(String collectionName) async {
    return FirebaseFirestore.instance.collection(collectionName).get();
  }

  Future<List<Map<String, dynamic>>> getByFilter(
      String collectionName,
      String field,
      dynamic value,
      ) async {
    final QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance
        .collection(collectionName)
        .where(field, isEqualTo: value)
        .get();

    return querySnapshot.docs
        .map(
          (QueryDocumentSnapshot<Map<String, dynamic>> e) => e.data(),
    )
        .toList();
  }
}
