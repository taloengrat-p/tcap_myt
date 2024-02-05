import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tcap_myt/src/screens/test/navigation_routing/screen_one/screen_one.dart';

class ScreenOneRouter {
  static void navigate(BuildContext context) async {
    log('before goto screen one');
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ScreenOne(),
      ),
    );

    log('result from screen one $result');
  }
}
