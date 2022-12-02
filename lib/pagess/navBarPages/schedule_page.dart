import 'package:flutter/material.dart';
import 'package:grad_projct/constant.dart';
import 'package:grad_projct/pagess/tables/daily_lessons.dart';
import 'package:grad_projct/pagess/tables/final_exams.dart';
import 'package:grad_projct/pagess/tables/monthly_exams.dart';

class schedule_Page extends StatelessWidget {
  const schedule_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
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
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // جدول الدروس اليومية
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => Daily_lessons()),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.square_outlined,
                        color: KColor,
                        size: 35,
                      ),
                    ),
                    const Text(
                      'جدول الدروس اليومية',
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Vazirmatn',
                      ),
                    )
                  ],
                ),
              ),
              // جدول الامتحانات الشهرية
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => Monthly_exams()),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.square_outlined,
                        color: KColor,
                        size: 35,
                      ),
                    ),
                    const Text(
                      'جدول الأمتحانات الشهرية',
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Vazirmatn',
                      ),
                    )
                  ],
                ),
              ),
              // جدول الأمتحانات النهائية
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => Final_exams()),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.square_outlined,
                        color: KColor,
                        size: 35,
                      ),
                    ),
                    const Text(
                      'جدول الأمتحانات النهائية',
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Vazirmatn',
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}



// class cardschedule extends StatelessWidget {
//   const cardschedule({Key? key, required this.mytext}) : super(key: key);

//   final String mytext;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//       height: 80,
//       width: double.infinity,
//       decoration: BoxDecoration(border: Border.all()),
//       child: Row(
//         children: [
//           // Icon(
//           //   Icons.square_outlined,
//           //   size: 55,
//           //   color: KColor,
//           // ),
//           IconButton(
//             onPressed: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: ((context) => Daily_lessons()),
//                 ),
//               );
//             },
//             icon: Icon(
//               Icons.square_outlined,
//               color: KColor,
//               size: 35,
//             ),
//           ),
//           Text(
//             mytext,
//             style: const TextStyle(
//               fontSize: 23,
//               fontFamily: 'Vazirmatn',
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
