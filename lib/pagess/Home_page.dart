import 'package:flutter/material.dart';
import 'package:grad_projct/constant.dart';
import 'package:grad_projct/lists/colorList.dart';
import 'package:grad_projct/pagess/Notifications_page.dart';
import 'package:grad_projct/widgets/homeDrawer.dart';
import 'package:grad_projct/widgets/tableWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
          child: Column(
            children: [
              //appar
              Container(
                margin: EdgeInsets.only(right: 5,top: 4,bottom: 15),
                child: Row(
                  children: [
                    //image
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child:const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person.jpg'),
                        radius: 20,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text('احمد محمد حمودي',style: TextStyle(fontSize: 18,fontFamily: 'Tajawal')),
                        Text('hmode6.gmail.com',style: TextStyle(fontSize: 13,fontFamily: 'Tajawal'))
                      ],)
                  ],),
              ) ,
              //صباح الخير text
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children:const [
                     Text('  صباح الخير. ',
                        style: TextStyle(fontFamily: 'Tajawal', fontSize: 24)),
                     Text('احمد ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                  ],
                ),
              ),

              //جدول
             Flexible(
                   child: ListView.builder(
                     itemCount: 6,
                     itemBuilder:    (context, index) {
                       return tableWidget();
                     },
                   ),
                 ),


              //text تبليغات
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'تبليغات اليوم ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Tajawal'),
                    ),
                    Container(
                      width: 80,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => Notifications_page()),
                            ),
                          );
                        },
                        icon: const Text('عرض الكل'),
                      ),
                    )
                  ],
                ),
              ),

              Flexible(
                child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                //padding: EdgeInsets.only(top: 6, right: 8, left: 6),
                                height: 80,width: double.infinity,
                                decoration:const BoxDecoration(

                                   border: Border(
                                    top: BorderSide( //                    <--- top side
                                      color: Colors.black,
                                    //  width: 3.0,
                                    ),
                                  ),

                                    //color: colorList[index].myColors
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [


                                    //main
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //for image and name
                                        Row(
                                          children:  [
                                            const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/person2.jpg'),
                                              radius: 18,
                                            ),
                                           const SizedBox(width: 5),
                                             Column(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                                               children: const[
                                                  Text(
                                                    'قام abdula kareem بنشر مهمة دراسية جديدة',
                                                    style: TextStyle(
                                                      fontFamily: 'Tajawal',
                                                      fontSize: 16,
                                                      color: Colors.black
                                                    )),
                                                 Text('03:00pm    ',
                                                     textAlign: TextAlign.right,
                                                     style: TextStyle(
                                                     fontFamily: 'Tajawal',
                                                     fontSize: 12,
                                                     color: Colors.black
                                                 )),
                                               ],
                                             ),
                                            // Text(
                                            //   'abdula kareem',
                                            //   style: TextStyle(
                                            //       color: Colors.black45,
                                            //       fontSize: 13),
                                            // )
                                          ],
                                        ),

                                        //for time
                                        // Row(
                                        //   children: const [
                                        //     Text(
                                        //       '03:00pm',
                                        //       style: TextStyle(
                                        //           color: Colors.black45,
                                        //           fontSize: 13),
                                        //     ),
                                        //     Icon(
                                        //       Icons.timer_sharp,
                                        //       color: Colors.black45,
                                        //       size: 20,
                                        //     )
                                        //   ],
                                        // )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
            ],
          ),
        ));
  }
}
