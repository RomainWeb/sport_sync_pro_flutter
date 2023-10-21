import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sport_sync_pro_flutter/components/bottom_nav_bar.dart';
import 'package:sport_sync_pro_flutter/pages/auth/login_page.dart';
import 'package:sport_sync_pro_flutter/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 500,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png', height: 100,),
                    const Spacer(),
                    const Text(
                      'Non-Contact Deliveries',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryColorLighter,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryColorLighter,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(AppColors.secondaryColor),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16
                            )
                          ),
                        ),
                        onPressed: () => FirebaseAuth.instance.signOut(),
                        child: const Text('LOG OUT'),
                      ),
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
