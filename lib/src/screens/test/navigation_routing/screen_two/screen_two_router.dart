import 'package:flutter/material.dart';
import 'package:tcap_myt/src/screens/test/navigation_routing/screen_two/screen_two.dart';

class ScreenTwoRouter {
  static void navigate(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScreenTwo()));
  }
}
