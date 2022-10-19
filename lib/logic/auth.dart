import 'dart:async';

import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  static final Auth auth = Auth();

  bool isAuthenticated = false;
}
