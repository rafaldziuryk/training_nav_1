import 'dart:async';

import 'package:flutter/material.dart';

class DI {
  static final DI di = DI();

  bool isInitialized = false;

  Future init() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
