import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_sync_pro_flutter/pages/group/users_group_page.dart';

import '../components/bottom_nav_bar.dart';
import '../components/top_nav_bar.dart';
import 'calendar/calendar_home_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 1;

  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const UsersGroupPage(),
    Text('page 2'),
    Text('page 3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: navigationBottomBar,
      )
    );
  }
}
