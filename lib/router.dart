import 'package:auto_route/auto_route.dart';

import 'pages/auth/authentication_page.dart';
import 'pages/auth/login_page.dart';
import 'pages/group/users-group-details_page.dart';
import 'pages/home_page.dart';
import 'pages/profile/user_profile_page.dart';
import 'router-gard.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: HomeRoute.page, initial: true),
    AutoRoute(path: '/login', page: LoginRoute.page),
    AutoRoute(path: '/authentification', page: AuthenticationRoute.page),
    AutoRoute(path: '/profile', page: UserProfileRoute.page, guards: [AuthGuard()]),
    AutoRoute(path: '/group/:id', page: UsersGroupDetailsRoute.page, guards: [AuthGuard()])
  ];
}
