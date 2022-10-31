import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grad_projct/pagess/login_page.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key,});
 

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationToNextPage);
  }

  void navigationToNextPage() async {
    Navigator.pushAndRemoveUntil(
      context, new MaterialPageRoute(builder: (context) => new login()),
      (Route<dynamic> route) => false, //
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 179, 163, 238),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 1,
              ),
              const Text(
                'مدرستي',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 2,
              ),
              const CircularProgressIndicator(
                backgroundColor: Colors.white,
              )
            ],
          ),
        ));
  }
}
