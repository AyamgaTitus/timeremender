import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/main.dart';

class friday extends StatefulWidget {
  const friday({Key? key}) : super(key: key);

  @override
  _fridayState createState() => _fridayState();
}

class _fridayState extends State<friday> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                print('Gesture Detector');
              });
            },
            child: Card(
              color: Colors.white,
              shadowColor: Colors.blueGrey,
              elevation: 3.0,
              child: Column(
                children: const [
                  Icon((Icons.person_outline_rounded), size:35, color: Colors.blueGrey),
                  SizedBox(height: 20.7,),
                  Text('Any Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  SizedBox(height: 15.7,),
                  Text('Another Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),

                ],
              ),

            ),
          ),

          GestureDetector(
            onTap: (){
              setState(() {
                print('Gesture Detector');
              });
            },
            child: Card(
              color: Colors.white,
              shadowColor: Colors.blueGrey,
              elevation: 3.0,
              child: Column(
                children: const [
                  Icon((Icons.person_outline_rounded), size:35, color: Colors.blueGrey),
                  SizedBox(height: 20.7,),
                  Text('Any Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  SizedBox(height: 15.7,),
                  Text('Another Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),

                ],
              ),

            ),
          ),

          GestureDetector(
            onTap: (){
              setState(() {
                print('Gesture Detector');
              });
            },
            child: Card(
              color: Colors.white,
              shadowColor: Colors.blueGrey,
              elevation: 3.0,
              child: Column(
                children: const [
                  Icon((Icons.person_outline_rounded), size:35, color: Colors.blueGrey),
                  SizedBox(height: 20.7,),
                  Text('Any Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  SizedBox(height: 15.7,),
                  Text('Another Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),

                ],
              ),

            ),
          ),

          GestureDetector(
            onTap: (){
              setState(() {
                print('Gesture Detector');
              });
            },
            child: Card(
              color: Colors.white,
              shadowColor: Colors.blueGrey,
              elevation: 3.0,
              child: Column(
                children: const [
                  Icon((Icons.person_outline_rounded), size:35, color: Colors.blueGrey),
                  SizedBox(height: 20.7,),
                  Text('Any Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  SizedBox(height: 15.7,),
                  Text('Another Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),

                ],
              ),

            ),
          ),

          GestureDetector(
            onTap: (){
              setState(() {
                print('Gesture Detector');
              });
            },
            child: Card(
              color: Colors.white,
              shadowColor: Colors.blueGrey,
              elevation: 3.0,
              child: Column(
                children: const [
                  Icon((Icons.person_outline_rounded), size:35, color: Colors.blueGrey),
                  SizedBox(height: 20.7,),
                  Text('Any Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  SizedBox(height: 15.7,),
                  Text('Another Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),

                ],
              ),

            ),
          ),

          GestureDetector(
            onTap: (){
              setState(() {
                print('Gesture Detector');
              });
            },
            child: Card(
              color: Colors.white,
              shadowColor: Colors.blueGrey,
              elevation: 3.0,
              child: Column(
                children: const [
                  Icon((Icons.person_outline_rounded), size:35, color: Colors.blueGrey),
                  SizedBox(height: 20.7,),
                  Text('Any Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  SizedBox(height: 15.7,),
                  Text('Another Text', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),

                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
