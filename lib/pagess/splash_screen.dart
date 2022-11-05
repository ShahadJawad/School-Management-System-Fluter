import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grad_projct/pagess/login_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
    var _duration = new Duration(seconds: 2);
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
                Center(
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 30.0),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'مدرستي',
                        textStyle: TextStyle(fontFamily: 'Cairo'),

                        speed: Duration(milliseconds: 150),
                      ),
                    ],
                    isRepeatingAnimation: false,
                    repeatForever: false,
                    displayFullTextOnTap: false,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 2,
              ),

            ],
          ),
        ));
  }
}
