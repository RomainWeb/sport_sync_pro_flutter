import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sport_sync_pro_flutter/router.dart';
import 'domain/config/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();

  MyApp({super.key});


  @override
  Widget build(BuildContext context) {


    return  MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,

    );
  }
}

