import 'package:flutter/material.dart';

import '../logic/auth.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Login'),
            ElevatedButton(
                onPressed: () {
                  Auth.auth.isAuthenticated = true;
                  Auth.auth.notifyListeners();
                },
                child: Text('zaloguj')),
          ],
        ),
      ),
    );
  }
}
