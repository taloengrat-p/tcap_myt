import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tcap_myt/res/colors.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme, style, color',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 18.sp,
              ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
            color: ColorKeys.primary,
          ),
          Container(
            height: 100,
            color: ColorKeys.secondary,
          ),
          Container(
            height: 100,
            color: ColorKeys.third,
          ),
        ],
      ),
    );
  }
}
