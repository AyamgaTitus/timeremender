import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/drawer.dart';
import 'package:timeremender/peroids/thisMonth.dart';
import 'package:timeremender/peroids/thisWeek.dart';
import 'package:timeremender/peroids/thisYear.dart';
import 'package:timeremender/tab_controllers.dart';
import 'Login/signin.dart';


class MyHomePage extends StatefulWidget {
  static const String routeName  = "/home";
  const MyHomePage({Key? key, required this.title, }) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        minimum: const EdgeInsets.only(top: 20),
        child: Scaffold(
          appBar: AppBar(

            actions: [
              // action button
              IconButton(
                icon: Icon( Icons.menu,size: 30 ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const menuDrawer()));
                  });
                },
              ),

            ],
            leading:  const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/bra.png'),
                foregroundColor: Colors.white,
                radius: 15,
              ),
            ),
            //title: const Text('TIMETAB'),
            // leading: CircleAvatar(
            //   backgroundImage: AssetImage('Assets/bra.png'),
            //   foregroundColor: Colors.white,
            //   radius: 15,
            // ),
            backgroundColor: Colors.green,
            bottom: PreferredSize(
                child: Center(
                  child: Container(
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('TIMETAB', style: TextStyle(
                          color: Colors.white,
                          fontSize: 55.4,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.1,
                        ),),

                        const Divider(
                          height: 1,
                          color: Colors.blueGrey,
                        ),
                        Padding(
                          padding: const  EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const this_week()));
                                  });
                                },
                                child: const Text('This week', style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                ),
                              ),


                              TextButton(
                                onPressed: () {
                                  //print('This Month is tapped');
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const this_month()));
                                  });
                                },
                                child: const Text('This month', style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                ),
                              ),


                              TextButton(
                                onPressed: () {
                                  //print('This year is tapped');
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const this_year()));
                                  });
                                },
                                child: const Text('This Year', style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
                preferredSize: const Size.fromHeight(160)),

          ),
          body: const tabControllers(),

          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            elevation: 3.5,
            child: const Icon(Icons.add),
            tooltip: 'Add',
            splashColor: Colors.green,
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  singIn()));
                //displayModalBottomSheet(context);
              });
            },
          ),
        ),
      );
  }
}
