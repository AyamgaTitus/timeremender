import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/Login/register.dart';
import 'package:timeremender/utils/constants.dart';

import '../home_page.dart';


class singIn extends StatefulWidget {
  static const String routeName  = "/login";

   singIn({Key? key}) : super(key: key);

  @override
  State<singIn> createState() => _singInState();
}

class _singInState extends State<singIn> {
  final formKey = GlobalKey<FormState>();

  final _userEmailController = TextEditingController();

  final _userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 15),
          child: Container(
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              IconButton(
              alignment: Alignment.topLeft,
              onPressed: () {
                Navigator.pop(context);
                // should close buttonSheet
              },
              icon: const Icon(
                Icons.arrow_back_sharp,color: Colors.white, size: 25,
              ),
            ),
                SizedBox(height: 50),

                // lets sign you in

                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Let\'s sign you in',style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.5,
                      ),),
                      const SizedBox(height: 10.0,),
                      Text('Welcome back',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2.1,
                      ),),
                      Text('You\'ve been missed!',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2.1,
                      ),),
                    ],

                  ),
                ),
                SizedBox(height: 50),

                //normal Login card


                Card(
                  child: Form(
                    key: formKey ,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFormField(
                                controller: _userEmailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Email',
                                  labelText: 'Email',

                                )

                            ),
                            SizedBox(height: 25),

                            TextFormField(
                                obscureText: true,
                                controller: _userPasswordController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Password',
                                  labelText: 'Password',

                                )

                            )

                          ]
                      ),
                    ),
                  ),
                ),

                //footer text


              Container(
                alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children:  [
                  Text('Don\'t have an Account?',style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  ),),
                  SizedBox(width: 10.4),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const registerUser()));
                      });
                    },
                    child: Text('Register',style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.4,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.1,
                    ),),
                  )

                ],
              ),
              const SizedBox(height: 10,),

              ElevatedButton(
                onPressed: (){
                  setState(() {
                    Constants.prefs.setBool('singIn', true);
                    Navigator.pushReplacementNamed(
                         context,  MyHomePage.routeName);
                  });
                }, child: const Text('Sign In',style: TextStyle(
                color: Colors.black54,
//fontSize: 15.4,
//fontWeight: FontWeight.w900,
                letterSpacing: 1.5,
              ),),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )

                ),

              )
            ],
          ),


      ),
            ]
    )

    ),
        ),
    ),



    );


  }
}









//
// Scaffold(
// body: Padding(
// padding: const EdgeInsets.only(top: 20),
// child: Expanded(
// child: Container(
// color: Colors.black54,
// child: Padding(
// padding: const EdgeInsets.all(35.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// IconButton(
// alignment: Alignment.topLeft,
// onPressed: () {
// Navigator.pop(context);
// // should close buttonSheet
// },
// icon: const Icon(
// Icons.arrow_back_sharp,color: Colors.white, size: 25,
// ),
// ),
//
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('Let\'s sign you in',style: TextStyle(
// color: Colors.white,
// fontSize: 50.4,
// fontWeight: FontWeight.w900,
// letterSpacing: 2.1,
// ),),
// const SizedBox(height: 10.0,),
// Text('Welcome back',style: TextStyle(
// color: Colors.white,
// fontSize: 30.4,
// fontWeight: FontWeight.w900,
// letterSpacing: 2.1,
// ),),
// Text('You\'ve been missed!',style: TextStyle(
// color: Colors.white,
// fontSize: 30.4,
// fontWeight: FontWeight.w900,
// letterSpacing: 2.1,
// ),),
// ],
//
// ),
// ),
// // const SizedBox(height: 20.0,),
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// const TextField(
// decoration: InputDecoration(
// border: OutlineInputBorder(),
// hintText: 'Email',
// ),
// ),
// const SizedBox(height: 10,),
//
// TextField(
// obscureText: true,
// decoration: InputDecoration(
// border: OutlineInputBorder(),
// hintText: 'password',
// ),
//
// ),
//
// ],
// ),
// ),
//
//
// //Spacer(),
// // const SizedBox(height: 100,),
// SizedBox(
// child: Container(
// height: MediaQuery.of(context).size.height * 0.25,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// Row(
// children: [
// Text('Don\'t have an Account?',style: TextStyle(
// color: Colors.white,
// fontSize: 15.4,
// fontWeight: FontWeight.w900,
// letterSpacing: 2.1,
// ),),
// SizedBox(width: 10.4),
//
// Text('Register',style: TextStyle(
// color: Colors.white,
// fontSize: 15.4,
// fontWeight: FontWeight.w900,
// letterSpacing: 2.1,
// ),)
//
// ],
// ),
// const SizedBox(height: 10,),
//
// ElevatedButton(
// onPressed: (){
// setState(() {
//
// });
// }, child: const Text('Sign In',style: TextStyle(
// color: Colors.black54,
// //fontSize: 15.4,
// //fontWeight: FontWeight.w900,
// letterSpacing: 1.5,
// ),),
// style: ElevatedButton.styleFrom(
// primary: Colors.white,
// padding: const EdgeInsets.all(10),
// textStyle: const TextStyle(
// fontSize: 30,
// fontWeight: FontWeight.bold,
// )
//
// ),
//
// )
// ],
// ),
//
//
// ),
// )
// ],
// ),
// ),
//
//
//
// ),
// ),
// )
// );
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
