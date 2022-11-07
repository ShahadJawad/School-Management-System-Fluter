import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({ required this.myText, required this.myIcon,required  this.onPressed});
final String myText ;
final Icon myIcon;
final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: onPressed,
      leading:myIcon,
      title: Text(myText),
    );
  }
}
