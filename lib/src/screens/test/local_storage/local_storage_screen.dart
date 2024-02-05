import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tcap_myt/src/data/app_preference/app_preference.dart';
import 'package:tcap_myt/src/screens/test/widget/widgets/test_button_widget.dart';
import 'package:uuid/uuid.dart';

class LocalStorageScreen extends StatefulWidget {
  const LocalStorageScreen({Key? key}) : super(key: key);

  @override
  _LocalStorageScreenState createState() => _LocalStorageScreenState();
}

class _LocalStorageScreenState extends State<LocalStorageScreen> {
  AppPreference _appPreference = AppPreference.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local storage'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Access token : ${_appPreference.getString(AppPreferenceKey.keyAccessToken)}'),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Row(
            children: [
              Expanded(
                child: TestButtonWidget(
                  onPress: () async {
                    final result = await _appPreference.setData(
                      AppPreferenceKey.keyAccessToken,
                      const Uuid().v4(),
                    );

                    log('result create access token : $result', name: runtimeType.toString());

                    if (result) {
                      setState(() {});
                    }
                  },
                  child: const Text(
                    'Create Access token',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                child: TestButtonWidget(
                  onPress: () {
                    _appPreference.removeData(
                      AppPreferenceKey.keyAccessToken,
                    );

                    setState(() {});
                  },
                  child: const Text(
                    'Clear Access token',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
