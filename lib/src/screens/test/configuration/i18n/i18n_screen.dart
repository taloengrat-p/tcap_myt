import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tcap_myt/res/generated/locale.g.dart';
import 'package:tcap_myt/src/utils/locale_utils.dart';

class I18nScreen extends StatefulWidget {
  const I18nScreen({Key? key}) : super(key: key);

  @override
  _I18nScreenState createState() => _I18nScreenState();
}

class _I18nScreenState extends State<I18nScreen> {
  bool _currentValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locale I18N'),
        actions: [
          Text(LocaleKeys.locale.tr()),
          Switch(
            value: _currentValue,
            onChanged: (changed) {
              LocaleUtils.changeLanguage(context);
              setState(() {
                _currentValue = !_currentValue;
              });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Text(LocaleKeys.testPassArgrumentIndex.tr(args: ['justin', 'bieber'])),
          Text(
            LocaleKeys.testPassArgrumentNaming.tr(
              namedArgs: {'firstname': 'justin', 'lastname': 'bieber', 'nickname': 'justies'},
            ),
          ),
        ],
      ),
    );
  }
}
