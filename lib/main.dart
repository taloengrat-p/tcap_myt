import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tcap_myt/res/paths.dart';
import 'package:tcap_myt/src/constance/keys_locales.dart';
import 'package:tcap_myt/src/data/app_preference/app_preference.dart';
import 'package:tcap_myt/src/screens/main/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  const mode = String.fromEnvironment("MODE");

  log('Application MODE : $mode', name: 'Main()');

  await dotenv.load(fileName: ".env.$mode");

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  AppPreference.instance.initPreference(sharedPreferences);
  const thLocale = Locale(KeyLocales.thLanguage);
  const enLocale = Locale(KeyLocales.enLanguage);

  runApp(
    EasyLocalization(
      startLocale: thLocale,
      supportedLocales: const [
        thLocale,
        enLocale,
      ],
      path: Paths.locale,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            // This is the theme of your application.
            //
            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a purple toolbar. Then, without quitting the app,
            // try changing the seedColor in the colorScheme below to Colors.green
            // and then invoke "hot reload" (save your changes or press the "hot
            // reload" button in a Flutter-supported IDE, or press "r" if you used
            // the command line to start the app).
            //
            // Notice that the counter didn't reset back to zero; the application
            // state is not lost during the reload. To reset the state, use hot
            // restart instead.
            //
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.
            primaryColor: Colors.red,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.pink,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: const MainScreen(),
    );
  }
}
