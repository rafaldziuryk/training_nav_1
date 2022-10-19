import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../logic/auth.dart';
import '../router.dart';

class PageDetail extends StatelessWidget {
  const PageDetail({@PathParam('id') required this.id, Key? key}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Detail $id'),
      ),
    );
  }
}
