import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../logic/auth.dart';
import '../router.dart';

class PageDashboard extends StatelessWidget {
  const PageDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Dashboard'),
            ElevatedButton(
                onPressed: () {
                  Auth.auth.isAuthenticated = false;
                  Auth.auth.notifyListeners();
                },
                child: Text('wyloguj')),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed("/loading");
                },
                child: Text('Ładuj dane')),
            ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed("/detail/test");
                },
                child: Text('Szcegóły')),
          ],
        ),
      ),
    );
  }
}
