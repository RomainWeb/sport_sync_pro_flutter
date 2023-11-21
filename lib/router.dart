import 'package:auto_route/auto_route.dart';

import 'pages/auth/authentication_page.dart';
import 'pages/auth/login_page.dart';
import 'pages/home_page.dart';
import 'pages/profile/user_profile_page.dart';
import 'router-gard.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true, guards: [AuthGuard()]),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: AuthenticationRoute.page),
    AutoRoute(page: UserProfileRoute.page, guards: [AuthGuard()])
  ];
}
