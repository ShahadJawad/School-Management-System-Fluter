import 'package:flutter/material.dart';
import 'package:grad_projct/lists/colorList.dart';
import 'package:grad_projct/constant.dart';

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
              CircleAvatar(
                radius: 30,
                backgroundColor: KColor,
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
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.home,
            size: 30,
          ),
          title: Text('الصفحة الرئيسية'),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.table_rows_sharp,
            size: 30,
          ),
          title: Text('الجدول اليومي وجدول الامتحانات'),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.menu_book_sharp,
            size: 30,
          ),
          title: Text('الكتب والمصادر'),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.class_,
            size: 30,
          ),
          title: Text('الصفوف'),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.done,
            size: 30,
          ),
          title: Text('مهامي'),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Color.fromARGB(255, 158, 158, 158),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 2.6,
        ),
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
