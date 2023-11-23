import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sport_sync_pro_flutter/domain/userGroup/entities/user_group_entity.dart';

class FirestoreAdapter {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  FirestoreAdapter._();
  static final FirestoreAdapter _service = FirestoreAdapter._();
  factory FirestoreAdapter() => _service;

  static FirestoreAdapter get instance => _service;

  Stream<List<UserGroupEntity>> getUserGroups() {
    const String path = 'TrainingGroup';
    final CollectionReference collection = _firebaseFirestore.collection(path);

    return collection.snapshots().map(
      (QuerySnapshot query) {
        return query.docs.map(
          (QueryDocumentSnapshot snapshot) {
            final Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

            data['id'] = snapshot.id;

            return UserGroupEntity.fromJson(data);
          }
        ).toList();
      }
    );
  }
}
