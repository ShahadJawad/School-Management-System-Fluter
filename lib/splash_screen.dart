import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grad_projct/login_page.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void inistate() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const Login_page(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 179, 163, 238),
        body: Center(
          child: Text(
            'مدرستي',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ));
  }
}
