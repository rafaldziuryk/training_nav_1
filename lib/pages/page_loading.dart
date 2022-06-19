import 'package:flutter/material.dart';

import '../logic/auth.dart';

class PageLoading extends StatelessWidget {
  const PageLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Loading'),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
