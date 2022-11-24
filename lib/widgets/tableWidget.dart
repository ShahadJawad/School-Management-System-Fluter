import 'package:flutter/material.dart';
import 'package:grad_projct/constant.dart';

class tableWidget extends StatelessWidget {
  const tableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border:BorderDirectional(bottom: BorderSide(color: KColor,width: 2))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const[
          Text('08:30',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Tajawal'),),
          Text('كيمياء',style: TextStyle(fontSize: 20,fontFamily: 'Tajawal')),
          Text('احمد محمد حمودي',style: TextStyle(fontSize: 20,fontFamily: 'Tajawal'),)

        ],
      ),
    );
  }
}
