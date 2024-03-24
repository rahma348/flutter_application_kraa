// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field
import 'package:flutter_application_kraa/Classes/language_constants.dart';
import 'package:flutter_application_kraa/pages/hist.dart';
import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flutter_application_kraa/pages/Diabetes.dart';
import 'package:flutter_application_kraa/pages/Edit%20Profile.dart';
// import 'package:flutter_application_kraa/Classes/language_constants.dart';
import 'package:flutter_application_kraa/pages/Pressure.dart';
import 'package:flutter_application_kraa/pages/Walking.dart';
import 'package:flutter_application_kraa/pages/home.dart';
import 'package:flutter_application_kraa/pages/login.dart';
import 'package:flutter_application_kraa/pages/logo.dart';
import 'package:flutter_application_kraa/pages/notifications.dart';
import 'package:flutter_application_kraa/pages/profile.dart';
import 'package:flutter_application_kraa/pages/water.dart';
// import 'package:flutter_application_kraa/router/custom_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
   Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }
   @override
  void didChangeDependencies() {
    getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      initialRoute: '/home',
      routes: {
        // '/': (context) => const Logo(),
        // '/login': (context) => const Login(),
        '/home': (context) => const Home(),
        '/water': (context) => const Water(),
        '/Pressure': (context) => const Pressure(),
        '/Diabetes': (context) => const Diabetes(),
        '/Walking': (context) => const Walking(),
        // '/medicine': (context) => const Medicine(),
        '/profile': (context) => const Profile(),
        '/Edie Profile': (context) => const EditProfile(),
        '/Notifications': (context) => const Notifications(),
          '/Hist': (context) => const Hist(),
      },
    );
  }
}
