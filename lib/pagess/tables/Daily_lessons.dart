import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../lists/sh.dart';
import '../../widgets/tableWidget.dart';

// ignore: camel_case_types
class Daily_lessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children:[
              Container(
                margin: EdgeInsets.only(right: 20, top: 10),
                alignment: Alignment.topRight,
                child: const Text(
                  'الجداول',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Vazirmatn',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 30,
                child: Flexible(
                    child:Row(
                      children: [
                       Container(
                                margin: EdgeInsets.symmetric(horizontal: 13,),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color:KColor
                                ),
                                child: Text(' ${mycategorylist[0].name}'),
                       ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 13,),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          
                          child: Text(' ${mycategorylist[1].name}'),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 13,),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(' ${mycategorylist[1].name}'),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10,),
                          padding: EdgeInsets.symmetric(horizontal: 5),

                          child: Text(' ${mycategorylist[3].name}'),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10,),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(

                          ),
                          child: Text(' ${mycategorylist[4].name}'),
                        ),
                      ],
                    )
                ),
              ),

              Flexible(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder:    (context, index) {
                  return tableWidget();
                },
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
