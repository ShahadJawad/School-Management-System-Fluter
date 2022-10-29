import 'package:flutter/material.dart';
import 'package:grad_projct/widgets/orginalButton.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2) ,
          child: Column(
            children:  [
           const   Text('اهلا بك!',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              )),
              const Center(
                  child:
                  Text(' في موقع مدرستي لمتابعة اخر الأخبار المتعلقة بصفك  \n                                '
                      'ودروسك \n                      قم بأدخال بياناتك هنا',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20
                      )
                  )),
            const  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                child:  TextField(
                  decoration:  InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'اسم المستخدم',
                  ),                ),
              ),
             const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child:  TextField(
                  decoration:  InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'الرمز السري',
                    suffixIcon: Icon(Icons.remove_red_eye)
                  ),                ),
              ),
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 21),
            height: 40,
            width: double.infinity,
             child:  orginalButton(text:'تسجيل الدخول', onPressed: (){}),
          ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ألا تمتلك حساب؟',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  TextButton(
                    onPressed: (){} ,
                    child: const Text(
                      'انشاء حساب',
                      style: TextStyle(
                       color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
