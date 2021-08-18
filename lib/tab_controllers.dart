import 'package:flutter/material.dart';
import 'package:timeremender/cardviewdetails.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class tabControllers extends StatefulWidget {
  const tabControllers({Key? key}) : super(key: key);

  @override
  _tabControllersState createState() => _tabControllersState();
}

class _tabControllersState extends State<tabControllers> {

  var url = "";
  var data;


  @override
  void initState() {
    super.initState();
    fetchData();
    setState(() {

    });
  }

  fetchData() async{
    var res = await http.get(url);
    data = jsonDecode(res.body);
  }


  @override
  void dispose() {
    super.dispose();
//
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Sun'),
                Tab(text: 'Sat'),
                Tab(text: 'Mon'),
                Tab(text: 'Tue'),
                Tab(text: 'Wed'),
                Tab(text: 'Thur'),
                Tab(text: 'Fri'),
              ],

            ),

            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.4, //height of TabBarView
                decoration: const BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.green, width: 0.5))
                ),
                child: TabBarView(
                  children: [
                    //for(int i=0; i<=count; i++)

                    data !=  null?GridView.builder(
                        itemBuilder: (context, index){
                          return const mycard(
                              myIcon: Icons.person_outline_rounded,
                              cardNames: 'Card Name',
                              cardDiscription: 'More Infor.');
                        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                    ),
                      itemCount: data.lenght,

                    ): Center(
                      child:CircularProgressIndicator()
                    ),

                    GridView.builder(
                      itemBuilder: (context, index){
                        return const mycard(
                            myIcon: Icons.person_outline_rounded,
                            cardNames: 'Card Name',
                            cardDiscription: 'More Infor.');
                      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                      // itemCount: data.lenght,

                    ),

                    GridView.builder(
                      itemBuilder: (context, index){
                        return const mycard(
                            myIcon: Icons.person_outline_rounded,
                            cardNames: 'Card Name',
                            cardDiscription: 'More Infor.');
                      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                      // itemCount: data.lenght,

                    ),

                    GridView.builder(
                      itemBuilder: (context, index){
                        return const mycard(
                            myIcon: Icons.person_outline_rounded,
                            cardNames: 'Card Name',
                            cardDiscription: 'More Infor.');
                      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                      // itemCount: data.lenght,

                    ),

                    GridView.builder(
                      itemBuilder: (context, index){
                        return const mycard(
                            myIcon: Icons.person_outline_rounded,
                            cardNames: 'Card Name',
                            cardDiscription: 'More Infor.');
                      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                      // itemCount: data.lenght,

                    ),


                    GridView.builder(
                      itemBuilder: (context, index){
                        return const mycard(
                            myIcon: Icons.person_outline_rounded,
                            cardNames: 'Card Name',
                            cardDiscription: 'More Infor.');
                      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                      // itemCount: data.lenght,

                    ),


                    GridView.builder(
                      itemBuilder: (context, index){
                        return const mycard(
                            myIcon: Icons.person_outline_rounded,
                            cardNames: 'Card Name',
                            cardDiscription: 'More Infor.');
                      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                      // itemCount: data.lenght,

                    ),


                  ],

                ),
              ),
            )







          ],

        ),



      ),

    );
  }
}
