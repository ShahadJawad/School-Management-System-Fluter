import 'package:flutter/material.dart';
import 'package:grad_projct/constant.dart';

class schedule_Page extends StatelessWidget {
  const schedule_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20,top: 10),
                alignment: Alignment.topRight,
                child:const Text('الجداول',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Vazirmatn'),),
              ),

              SizedBox(height: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  cardschedule(mytext: 'جدول الدروس اليومية'),
                  cardschedule(mytext: 'جدول الأمتحانات الشهرية'),
                  cardschedule(mytext: 'جدول الأمتحانات النهائية')
                ],
              )

            ],
          )),
    );
  }
}

class cardschedule extends StatelessWidget {
  const cardschedule({Key? key,required this.mytext}) : super(key: key);

 final String mytext;
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      height: 80,width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all()
      ),
      child: Row(
        children: [
          Icon(Icons.square_outlined,size: 55,color: KColor,),
            Text(mytext ,
            style:const TextStyle(
                fontSize: 23,
                fontFamily: 'Vazirmatn'),)
        ],
      ),
    );
  }
}

