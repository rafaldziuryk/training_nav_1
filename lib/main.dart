import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nav1/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _appRouter = AppRouter();

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
    print(
        'New route pushed: ${route.settings.name} ${_appRouter.stack.toString()}');
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
