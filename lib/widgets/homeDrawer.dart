import 'package:flutter/material.dart';
import 'package:grad_projct/constant.dart';
import 'package:grad_projct/pagess/classas_page.dart';
import 'package:grad_projct/widgets/myListTile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 60, 20, 0),
          child: Row(
            children: [
             const CircleAvatar(
                radius: 30,
               backgroundImage: AssetImage('assets/images/person.jpg'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              Column(
                children: const [
                  Text(
                    'احمد محمد عدنان',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'الاول متوسط -ب-',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        MyListTile(myText: 'الصفحة الرئيسية', myIcon:  const Icon(Icons.home,size: 30,), onPressed: (){}),

        Container(
          width: double.infinity,
          height: 1,
          color:const Color.fromARGB(255, 158, 158, 158),
        ),
        MyListTile(myText: 'الجدول اليومي وجدول الامتحانات', myIcon: const Icon(Icons.table_rows_sharp,size: 30,), onPressed: () {}),

        Container(
          width: double.infinity,
          height: 1,
          color:const Color.fromARGB(255, 158, 158, 158),
        ),
        MyListTile(myText: 'الكتب والمصادر', myIcon: const Icon(Icons.menu_book_sharp, size: 30,), onPressed: () {}),

        Container(
          width: double.infinity,
          height: 1,
          color:const Color.fromARGB(255, 158, 158, 158),
        ),

        MyListTile(myText: 'الصفوف',
            myIcon:const Icon(Icons.class_,size: 30,), onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>classas_page()));
            }),

        Container(
          width: double.infinity, height: 1,
          color:const Color.fromARGB(255, 158, 158, 158),
        ),

        MyListTile(myText: 'مهامي', myIcon: const Icon(Icons.done, size: 30,), onPressed: (){}),

        Container(
          width: double.infinity,
          height: 1,
          color:const Color.fromARGB(255, 158, 158, 158),
        ),

        const Spacer(),
        Container(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ),
      ],
    );
  }
}
