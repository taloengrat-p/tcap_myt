import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tcap_myt/src/constance/keys_locales.dart';

class LocaleUtils {
  static Future<void> changeLanguage(BuildContext context) async {
    await context.setLocale(
      Locale(isEnLanguage(context) ? KeyLocales.thLanguage : KeyLocales.enLanguage),
    );
  }

  static bool isEnLanguage(BuildContext context) {
    return localString(context) == KeyLocales.enLanguage;
  }

  static bool isThLanguage(BuildContext context) {
    return localString(context) == KeyLocales.thLanguage;
  }

  static String localString(BuildContext context) => context.locale.toString();
}
