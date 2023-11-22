import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sport_sync_pro_flutter/router.dart';
import 'package:sport_sync_pro_flutter/domain/utils/auth.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/utils/colors.dart';

@RoutePage()
class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            AutoRouter.of(context).push(const LoginRoute());
          },
          child: const Text('LOG OUT'),
        ),
      ),
    );
  }
}
