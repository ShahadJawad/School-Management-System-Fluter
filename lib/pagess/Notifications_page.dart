import 'package:flutter/material.dart';

class Notifications_page extends StatefulWidget {
  const Notifications_page({super.key});

  @override
  State<Notifications_page> createState() => _Notifications_pageState();
}

class _Notifications_pageState extends State<Notifications_page> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'تبليغات اليوم ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Vazirmatn'),
                ),
                IconButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                  },
                  icon: Icon(Icons.date_range),
                )
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            const EdgeInsets.only(top: 6, right: 8, left: 6),
                        height: 80,
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(width: 0.5, color: Colors.grey)),

                          // color: colorList[index].myColors
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                'قام abdula kareem بنشر مهمة دراسية جديدة',
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
                                  children: const [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/person2.jpg'),
                                      radius: 15,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'abdula kareem',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 13),
                                    )
                                  ],
                                ),

                                //for time
                                Row(
                                  children: const [
                                    Text(
                                      '03:00pm',
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 13),
                                    ),
                                    Icon(
                                      Icons.timer_sharp,
                                      color: Colors.black45,
                                      size: 20,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
