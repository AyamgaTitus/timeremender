import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/Login/signin.dart';

import '../home_page.dart';

class registerUser extends StatefulWidget {
  const registerUser({Key? key}) : super(key: key);

  @override
  _registerUserState createState() => _registerUserState();
}

class _registerUserState extends State<registerUser> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
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
                          Text('Hi! THERE',style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.4,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.5,
                          ),),
                          const SizedBox(height: 10.0,),
                          Text('Welcome to TimeTab',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.4,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2.1,
                          ),),
                          SizedBox(height: 5),
                          Text('Get Registered',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.4,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2.1,
                          ),),
                        ],

                      ),
                    ),
                    SizedBox(height: 25),

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
                                    keyboardType: TextInputType.name,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Please Enter Full Name',
                                      labelText: 'Name',

                                    )

                                ),
                                SizedBox(height: 25),

                                TextFormField(
                                    obscureText: true,
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
                                    keyboardType: TextInputType.visiblePassword,
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
                              Text('Alredy have Acoount',style: TextStyle(
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
                                        MaterialPageRoute(builder: (context) => singIn()));
                                  });
                                },
                                child: Text('Sign In',style: TextStyle(
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
                                Navigator.pushNamed(
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
