import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nav1/logic/auth.dart';
import 'package:nav1/pages/page_detail.dart';
import 'package:nav1/pages/page_loading.dart';

import 'logic/di.dart';
import 'pages/page_dashboard.dart';
import 'pages/page_login.dart';

part 'router.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.noTransition,
  routes: <AutoRoute>[
    MaterialRoute(page: PageDetail, path: '/detail/:id'),
    MaterialRoute(page: PageLoading, path: '/loading'),
    MaterialRoute(page: PageLogin, path: '/login'),
    MaterialRoute(page: PageDashboard, path: '/', guards: [InitGuard, AuthGuard]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({
    required super.initGuard,
    required super.authGuard,
  });
}

class AuthGuard extends AutoRedirectGuard {
  final Auth authService;

  AuthGuard(this.authService) {
    authService.addListener(reevaluate);
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async {
    return authService.isAuthenticated;
  }

  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      redirect(const PageLoginRoute(), resolver: resolver);
    }
  }
}

class InitGuard extends AutoRouteGuard {
  final DI di;

  InitGuard(this.di);

  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (!di.isInitialized) {
      await di.init();
    }
    resolver.next();
  }
}
