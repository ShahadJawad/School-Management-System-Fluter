import 'package:flutter/material.dart';
import 'package:grad_projct/constant.dart';


class orginalButton extends StatelessWidget {
  orginalButton({required this.text , required this.onPressed}) ;
  final VoidCallback onPressed;
  String text ;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:KColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child:  Text(text,
        style:const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
