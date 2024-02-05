import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tcap_myt/src/screens/test/widget/widgets/test_button_widget.dart';

class TestStatefullWidget extends StatefulWidget {
  final Color? backgroundColor;

  TestStatefullWidget({
    Key? key,
    this.backgroundColor,
  }) : super(key: key) {
    log('constructor()', name: runtimeType.toString());
  }

  @override
  TestStatefullWidgetState createState() {
    log('createState()', name: runtimeType.toString());
    return TestStatefullWidgetState();
  }
}

class TestStatefullWidgetState extends State<TestStatefullWidget> with WidgetsBindingObserver {
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log('initState()', name: runtimeType.toString());
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    log('didChangeDependencies()', name: runtimeType.toString());
  }

  @override
  void didUpdateWidget(covariant TestStatefullWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    log('didUpdateWidget()', name: runtimeType.toString());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    log('didChangeAppLifecycleState() $state', name: runtimeType.toString());
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    log('deactivate()', name: runtimeType.toString());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    log('dispose()', name: runtimeType.toString());
  }

  void callMethodFromTestStatefulWidget() {
    log('this log call in test stateful widget');
  }

  @override
  Widget build(BuildContext context) {
    log('build()', name: runtimeType.toString());
    return Container(
      height: 200,
      width: double.infinity,
      color: widget.backgroundColor,
      child: ListView(
        children: [
          Text(
            'Stateful Widget',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
            ),
          ),
          Text(number.toString()),
          TestButtonWidget(
              onPress: () {
                setState(() {
                  number++;
                });
              },
              child: Text('increase'))
        ],
      ),
    );
  }
}
