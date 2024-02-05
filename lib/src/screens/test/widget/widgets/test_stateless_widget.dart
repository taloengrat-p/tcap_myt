import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tcap_myt/src/screens/test/widget/widgets/test_button_widget.dart';

class TestStatelessWidget extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;

  final Function(String value, int numb)? onEvent;

  const TestStatelessWidget({
    Key? key,
    required this.backgroundColor,
    this.onEvent,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: backgroundColor,
      child: ListView(
        children: [
          Text(
            'Stateless Widget',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
            ),
          ),
          child,
          TestButtonWidget(
            backgroundColor: Colors.black,
            onPress: () {
              onEvent?.call('test  i m sended', 10);
            },
            child: const Icon(
              Icons.add_alert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
