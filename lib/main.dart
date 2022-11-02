import 'package:flutter/material.dart';
import 'package:grad_projct/pagess/login_page.dart';
import 'package:grad_projct/pagess/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
      ],

      home: Splash_Screen(),
    );
  }
}