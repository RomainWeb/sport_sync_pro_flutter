import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_sync_pro_flutter/components/top_nav_bar.dart';

@RoutePage()
class UsersGroupDetailsPage extends StatelessWidget {
  final String bookId;
  const UsersGroupDetailsPage({@PathParam('id') required this.bookId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(),
      body: const Center(child: Text('test')),
    );
  }
}
