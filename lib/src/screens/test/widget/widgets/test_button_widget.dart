import 'package:flutter/material.dart';

class TestButtonWidget extends StatelessWidget {
  final Widget child;
  final Function()? onPress;
  final Color? backgroundColor;

  const TestButtonWidget({
    Key? key,
    required this.child,
    this.onPress,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
      ),
      child: child,
    );
  }
}
