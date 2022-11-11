import 'package:flutter/material.dart';
import 'package:grad_projct/constant.dart';
import 'package:grad_projct/lists/colorList.dart';
import 'package:grad_projct/widgets/homeDrawer.dart';


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
            child:const CircleAvatar(backgroundImage: AssetImage('assets/images/person.jpg'),radius: 18,))],

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
      drawer: const Drawer(
       child: HomeDrawer(),
      ),
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
                    borderRadius: BorderRadius.circular(10),
                  ) ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       const Center(
                          child: Text('ما هو جدول الغد؟',style: TextStyle(fontSize: 25,fontFamily: 'Cairo')),
                        ),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Text('عرض جدول ايام الاسبوع كامل')],
                          ),

                      ],
                  ),
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
                    itemCount:6 ,
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        InkWell(
                          onTap: (){},
                      child: Container(
                        padding: EdgeInsets.only(top: 6,right: 8,left: 6),
                        height: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: colorList[index].myColors),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const  Text('قام abdula kareem بنشر مهمة دراسية جديدة',
                                  style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 16,
                                  )),

                              //main
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  //for image and name
                                  Row(
                                    children:const [
                                      CircleAvatar(backgroundImage: AssetImage('assets/images/person2.jpg'),
                                        radius: 15,
                                      ),
                                      SizedBox(width:5),
                                      Text('abdula kareem',style: TextStyle (color: Colors.black45,fontSize: 13),)],),

                                  //for time
                                  Row(
                                    children:const [
                                    Text('03:00pm',style: TextStyle(color: Colors.black45,fontSize: 13),),
                                    Icon(Icons.timer_sharp,color: Colors.black45,size: 20,)
                                  ],)

                                ],
                              )
                            ],
                          ) ,
                      ),
                    )

                ),
              ),


            ],
          )
      )
    );
  }
}
