import 'package:flutter/material.dart';

// ignore: camel_case_types
class Final_exams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 350.0,
            ),
            Text(
              "Final Exams",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
             Text(
              "Soon",
              style: TextStyle(
                fontSize: 40,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
