import 'package:flutter/material.dart';

import '../../constant.dart';
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
            padding: const EdgeInsets.symmetric(horizontal:10),
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


                    ] ),
              ),
             const SizedBox(height: 30),
              //card
              Flexible(
              child:ListView.builder(
                itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children:const [
                              cardClass(),

                              cardClass()
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

class cardClass extends StatelessWidget {
  const cardClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,width: 170,
        decoration: BoxDecoration(
          border: Border.all(),
          // borderRadius:BorderRadius.circular(15),
          //color: colorList[index].myColors,

        ),
        child:   Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                      padding:const EdgeInsets.symmetric(horizontal: 10),
                      child:const Text('الرياضيات',
                        style: TextStyle(fontSize: 18,fontFamily: 'Vazirmatn',fontWeight: FontWeight.bold), )),
                  const Text('  الصف الاول متوسط ',
                      style: TextStyle(fontSize: 14,fontFamily: 'Vazirmatn',fontWeight: FontWeight.w500)
                  ),
                ],
              ),


              //doctor information
              Container(
                margin:const EdgeInsets.symmetric(vertical: 5),
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
                        Icon(Icons.mode_edit_outline_rounded, size: 16,),
                        Icon(Icons.delete_outline_outlined,size: 16,color: Colors.red,)
                      ],
                    )

                  ],
                ),
              ),
            ])
    );
  }
}

