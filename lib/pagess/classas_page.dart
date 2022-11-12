import 'package:flutter/material.dart';
import 'package:grad_projct/lists/colorList.dart';

import '../constant.dart';
class classas_page extends StatelessWidget {
  const classas_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              //text الصفوف
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const[
                  Text('الصفوف',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Vazirmatn'),),
             ] ),
          //البحث
              Padding(
                padding:const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                  Container(
            alignment: Alignment.center,
            height: 40,
            width: 300,
            padding: EdgeInsets.symmetric(horizontal:10),
            decoration: BoxDecoration(
              color: Colors.white,
             borderRadius:BorderRadius.circular(20),

            ),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
                prefixIcon:
                Icon(Icons.search, color: Colors.black.withOpacity(.6)),
                hintText: 'بحث',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: KColor)
                    //borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),


                         Text('اضافه صف',
                        style: TextStyle(
                          color: Colors.grey[700],
                            fontSize: 15,
                            fontFamily: 'Vazirmatn'),),
                    ] ),
              ),
             const SizedBox(height: 30),
              //cart
              Flexible(
              child:ListView.builder(
                itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Container(
                              height: 160,width: 180,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(15),
                                  color: colorList[index].myColors,

                              ),
                                child:   Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child:const Text('الرياضيات',
                                      style: TextStyle(fontSize: 18,fontFamily: 'Vazirmatn',fontWeight: FontWeight.bold), )),
                                const Text('  الصف الاول متوسط ',
                                    style: TextStyle(fontSize: 14,fontFamily: 'Vazirmatn',fontWeight: FontWeight.w500)
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 60),
                                  width: double.infinity, height: 1,
                                  color:Colors.black,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children:  [
                                      Row(
                                        children:const [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/person2.jpg'),
                                            radius: 15,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'abdula kareem',
                                            style: TextStyle(
                                                color: Colors.black,fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                        ],
                                      ),

                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children:const [
                                          Icon(Icons.file_copy_outlined, size: 16,color: Colors.white38),
                                          Icon(Icons.delete_outline_outlined,size: 16,color: Colors.white38)
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              ])
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                height: 160,width: 180,
                                decoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(15),
                                    color: colorList2[index].myColors
                                ),
                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child:const Text('الرياضيات',
                                            style: TextStyle(fontSize: 18,fontFamily: 'Vazirmatn',fontWeight: FontWeight.bold), )),
                                     const Text('  الصف الاول متوسط ',
                                          style: TextStyle(fontSize: 14,fontFamily: 'Vazirmatn',fontWeight: FontWeight.w500)
                                      ),
                                      Container(
                                      margin: EdgeInsets.only(top: 60),
                                      width: double.infinity, height: 1,
                                      color:Colors.black,
                                    ),
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children:  [
                                            Row(
                                              children:const [
                                                 CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'assets/images/person2.jpg'),
                                                  radius: 15,
                                                ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                  'abdula kareem',
                                                  style: TextStyle(
                                                      color: Colors.black,fontWeight: FontWeight.w500,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),

                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children:const [
                                                Icon(Icons.file_copy_outlined, size: 16,color: Colors.white38),
                                                Icon(Icons.delete_outline_outlined,size: 16,color: Colors.white38)
                                              ],
                                            )

                                          ],
                                        ),
                                      ),
                                  ])
                              ),
                            ],
                          ),
                        ),
                      const  SizedBox(height: 40)
                      ],
                    );
                  },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
