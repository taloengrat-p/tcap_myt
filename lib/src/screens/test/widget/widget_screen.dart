import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tcap_myt/src/screens/test/widget/widgets/test_button_widget.dart';
import 'package:tcap_myt/src/screens/test/widget/widgets/test_statefull_widget.dart';
import 'package:tcap_myt/src/screens/test/widget/widgets/test_stateless_widget.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({Key? key}) : super(key: key);

  @override
  _WidgetScreenState createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  String label = 'test ';

  GlobalKey<TestStatefullWidgetState> testStatefulKey = GlobalKey();

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: ListView(
        children: [
          TestStatefullWidget(
            key: testStatefulKey,
            backgroundColor: Colors.amber,
          ),
          TestButtonWidget(
            child: const Text('test call child widget'),
            onPress: () {
              testStatefulKey.currentState?.callMethodFromTestStatefulWidget();
            },
          ),
          const SizedBox(
            height: 10,
            child: Text('data'),
          ),
          TestStatelessWidget(
            backgroundColor: Colors.pink,
            onEvent: (String value, int numb) {
              log('onEvent() value: $value, ${numb.toString()}', name: runtimeType.toString());
            },
            child: const Icon(Icons.abc_outlined),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: TestButtonWidget(
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPress: () {
              log('onPress', name: runtimeType.toString());
            },
          ),
        ),
      ),
    );
  }
}
