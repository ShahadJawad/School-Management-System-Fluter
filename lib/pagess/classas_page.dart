import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grad_projct/lists/colorList.dart';
class classas_page extends StatelessWidget {
  const classas_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
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
                        height: 35,
                        width: 260,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:Border.all(color: Colors.grey),

                            borderRadius: BorderRadius.circular(30)
                        ),

                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,

                              prefixIcon: Icon(Icons.search_outlined),
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
              SizedBox(height: 30),
              //cart
              Flexible(
              child:ListView.builder(
                itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children: [
                              Container(
                              height: 160,width: 160,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(15),
                                  color: colorList[index].myColors
                              ),
                              ),
                              Container(
                                height: 160,width: 160,
                                decoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(15),
                                    color: colorList2[index].myColors
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50)
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
