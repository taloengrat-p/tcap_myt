import 'package:flutter/material.dart';
import 'package:tcap_myt/src/screens/test/navigation_routing/navigation_routing_screen.dart';

class NavigationRoutingRouter {
  static void navigate(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const NavigationRoutingScreen(),
      ),
    );
  }
}
