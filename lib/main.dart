import 'package:timeremender/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/daysOfTheWeek_tabs/sunday.dart';
import 'package:timeremender/daysOfTheWeek_tabs/monday.dart';
import 'package:timeremender/daysOfTheWeek_tabs/tuesday.dart';
import 'package:timeremender/daysOfTheWeek_tabs/wednessday.dart';
import 'package:timeremender/daysOfTheWeek_tabs/thursday.dart';
import 'package:timeremender/daysOfTheWeek_tabs/friday.dart';
import 'package:timeremender/daysOfTheWeek_tabs/saturday.dart';
import 'package:timeremender/peroids/thisWeek.dart';
import 'package:timeremender/peroids/thisMonth.dart';
import 'package:timeremender/peroids/thisYear.dart';
import 'dart:html';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'TIMETAB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:
        DefaultTabController(
          length: 7,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: const Padding(
                      padding: EdgeInsets.all(35.0),
                      child: Text("TIMETAB",
                          style:  TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          )),
                    ),
                    background:
                    Container(
                      color: Colors.lightGreen,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
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
                                  //print('you tapped this year');
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const this_year()));
                                  });
                                },
                                child: const Text('This Year', style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),),
                              ),
                            ],
                          ),
                        ),

                      ),
                    ),

                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    const TabBar(
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.black,
                      isScrollable: true,
                      unselectedLabelColor: Colors.black54,
                      tabs: [
                        Tab( text: "Sat"),
                        Tab( text: "Sun"),
                        Tab( text: "Mon"),
                        Tab( text: "Tue"),
                        Tab( text: "Wed"),
                        Tab( text: "Thur"),
                        Tab( text: "Fri"),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },

            body:  const TabBarView(
              children: [
                saturday(),
                sunday(),
                monday(),
                tuesday(),
                wednessday(),
                thursday(),
                friday(),
              ],
            ),
          ),
        ),










        endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration:  BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      CircleAvatar(
                        backgroundImage: AssetImage('Assets/bra.png'),
                        foregroundColor: Colors.white,
                        radius: 35,
                      ),
                      SizedBox(height: 10),
                      Text('Akwasi Titus'),
                      SizedBox(height: 10),
                      Text('akwasititus.edu.gh')
                    ],
                  ),
                )
            ),
            ListTile(
              hoverColor: Colors.orange,
              leading: const Icon((Icons.person_outline_rounded), color: Colors.blueGrey),
              title: const Text('Profile', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading:  const Icon((Icons.message_outlined), color: Colors.blueGrey),
              hoverColor: Colors.lightBlueAccent,
              title: const Text('Messages', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              hoverColor: Colors.orange,
              leading:  const Icon((Icons.waves_outlined), color: Colors.blueGrey),
              title:   const Text('Activity', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  //...codes here.......
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              hoverColor: Colors.orange,
              leading:  const Icon((Icons.list_rounded), color: Colors.blueGrey),
              title:   const Text('List', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  //...codes here.......
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              hoverColor: Colors.orange,
              leading:  const Icon((Icons.report_gmailerrorred_sharp), color: Colors.blueGrey),
              title:   const Text('Report', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  //...codes here.......
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              hoverColor: Colors.orange,
              leading:  const Icon((Icons.flash_on), color: Colors.blueGrey),
              title:   const Text('Statistics', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  //...codes here.......
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              hoverColor: Colors.orange,
              leading:  const Icon((Icons.outbond_outlined), color: Colors.blueGrey),
              title:   const Text('Sign Out', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  //...codes here.......
                  Navigator.pop(context);
                });
              },
            ),

            const Divider(
              color: Colors.blueGrey,
            ),

            ListTile(
              hoverColor: Colors.orange,
              leading:  const Icon((Icons.share_outlined), color: Colors.blueGrey),
              title:   const Text('Tell a Friend', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  //...codes here.......
                  Navigator.pop(context);
                });
              },
            ),

            ListTile(
              hoverColor: Colors.orange,
              leading:  const Icon((Icons.help_outline_sharp), color: Colors.blueGrey),
              title:   const Text('Help and Feedback', style: TextStyle(
                color: Colors.black54,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
              onTap: () {
                setState(() {
                  //...codes here.......
                  Navigator.pop(context);
                });
              },
            ),

          ],
        ),

      ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
           elevation: 3.5,
           child: const Icon(Icons.add),
           tooltip: 'Add',
           splashColor: Colors.green,
           onPressed: () {
            print('floating Action Button');
        },
        ),


    );
  }
}



class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
}
}
