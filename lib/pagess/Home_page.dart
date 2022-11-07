import 'package:flutter/material.dart';
import 'package:grad_projct/constant.dart';
import 'package:grad_projct/lists/colorList.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        //image
        actions:  [
          Container(
          margin:const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(backgroundColor: KColor,radius: 18,))],

       //drawer
        leading: Builder(
          builder:(context) {
            return IconButton(
              onPressed: ()=>Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.format_list_bulleted_outlined,color: Colors.black));}
        ),
         backgroundColor: Colors.white10,
         elevation: 0,
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
          child:Column(
            children: [
              //صباح الخير text
              Row(
                children: [
                 const Text('صباح الخير,',
                      style: TextStyle(fontFamily: 'Tajawal',fontSize: 20)),
                   const   Text( 'احمد ' , style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Icon(Icons.emoji_emotions_outlined,size: 18,color: KColor,)
                ],),

              //جدول
              Container(
                margin: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  color: Colors.brown[100],
                  borderRadius: BorderRadius.circular(10)
                ) ,
              ),
              
              //text تبليغات
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                  Text('تبليغات اليوم ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Tajawal'),),
                  Text('عرض الكل')
                ],),
              ),

              Flexible(
                child: ListView.builder(
                    itemCount:5 ,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      height: 80,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: colorList[index].myColors),
                        child: InkWell(
                          onTap: (){},

                        )
                    )

                ),
              ),


            ],
          )
      )
    );
  }
}
