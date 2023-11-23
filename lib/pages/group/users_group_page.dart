import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sport_sync_pro_flutter/domain/userGroup/entities/user_group_entity.dart';
import '../../components/user_group_card.dart';

class UsersGroupPage extends StatefulWidget {
  const UsersGroupPage({super.key});

  @override
  State<UsersGroupPage> createState() => _UsersGroupPageState();
}

class _UsersGroupPageState extends State<UsersGroupPage> {
  final Stream<QuerySnapshot> _userGroupStream =
    FirebaseFirestore.instance.collection('TrainingGroup').snapshots();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: StreamBuilder<QuerySnapshot>(
        stream: _userGroupStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
              UserGroupEntity userGroup = UserGroupEntity.fromJson(data);
              return Column(
                children: [
                  UserGroupCard(userGroup: userGroup),
                  const SizedBox(height: 16),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
