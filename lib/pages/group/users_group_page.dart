import 'package:flutter/material.dart';
import '../../components/user_group_card.dart';

class UsersGroupPage extends StatelessWidget {
  const UsersGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),
        SizedBox(height: 12),
        UserGroupCard(),SizedBox(height: 12),
        UserGroupCard(),SizedBox(height: 12),
        UserGroupCard()

      ],
    );
  }
}
