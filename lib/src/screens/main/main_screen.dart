import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tcap_myt/res/images.dart';
import 'package:tcap_myt/src/screens/test/api_actions/api_actions_screen.dart';
import 'package:tcap_myt/src/screens/test/configuration/configuration_screen.dart';
import 'package:tcap_myt/src/screens/test/local_storage/local_storage_screen.dart';
import 'package:tcap_myt/src/screens/test/navigation_routing/navigation_routing_screen.dart';
import 'package:tcap_myt/src/screens/test/statemenagement/statemanagement_screen.dart';
import 'package:tcap_myt/src/screens/test/widget/widget_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const mode = String.fromEnvironment("MODE");

    return Scaffold(
      appBar: AppBar(
        title: const Text('TCAP MYT : $mode'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 32.h,
              ),
              Image.asset(
                Images.logo,
                width: 100.w,
              ),
              SizedBox(
                height: 32.h,
              ),
              ElevatedButton(
                onPressed: () {
                  goTo(const WidgetScreen());
                },
                child: const Text('Widget'),
              ),
              ElevatedButton(
                onPressed: () {
                  goTo(const StatemanagementScreen());
                },
                child: const Text('Statemanagement'),
              ),
              ElevatedButton(
                onPressed: () {
                  goTo(const ConfigurationScreen());
                },
                child: const Text('Configuration'),
              ),
              ElevatedButton(
                onPressed: () {
                  goTo(const ApiActionsScreen());
                },
                child: const Text('Api actions'),
              ),
              ElevatedButton(
                onPressed: () {
                  goTo(const NavigationRoutingScreen());
                },
                child: const Text('Navigation & Routing'),
              ),
              ElevatedButton(
                onPressed: () {
                  goTo(const LocalStorageScreen());
                },
                child: const Text('Local storage'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void goTo(Widget screen) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (builder) => screen,
      ),
    );
  }
}
