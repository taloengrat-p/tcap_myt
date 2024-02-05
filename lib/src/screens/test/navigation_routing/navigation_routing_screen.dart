import 'package:flutter/material.dart';
import 'package:tcap_myt/src/screens/test/navigation_routing/screen_one/screen_one_router.dart';
import 'package:tcap_myt/src/screens/test/navigation_routing/screen_two/screen_two_router.dart';

class NavigationRoutingScreen extends StatefulWidget {
  const NavigationRoutingScreen({Key? key}) : super(key: key);

  @override
  _NavigationRoutingScreenState createState() => _NavigationRoutingScreenState();
}

class _NavigationRoutingScreenState extends State<NavigationRoutingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation & Routing'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              ScreenOneRouter.navigate(context);
            },
            child: const Text('Screen One'),
          ),
          ElevatedButton(
            onPressed: () {
              ScreenTwoRouter.navigate(context);
            },
            child: const Text('Screen One'),
          ),
        ],
      ),
    );
  }
}
