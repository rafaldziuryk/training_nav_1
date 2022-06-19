import 'package:flutter/material.dart';

import '../logic/auth.dart';

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
          ],
        ),
      ),
    );
  }
}
