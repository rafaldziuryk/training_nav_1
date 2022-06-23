import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nav1/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [MyObserver(_appRouter)],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class MyObserver extends AutoRouterObserver {
  final AppRouter _appRouter;

  MyObserver(this._appRouter);

  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name} ${_appRouter.stack.toString()}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name} ${_appRouter.stack.toString()}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name} ${_appRouter.stack.toString()}');
  }
}
