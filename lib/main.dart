import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeremender/Login/signin.dart';
import 'package:timeremender/home_page.dart';
import 'package:timeremender/utils/constants.dart';




Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
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
       home: Constants.prefs.getBool("singIn") == true
      ? MyHomePage(title: 'TimeTab',)
       : singIn(),
      routes: {
        singIn.routeName : (context) => singIn(),
        MyHomePage.routeName : (context) => const MyHomePage(title: 'TIMETIB',),
      },
    );
  }
}

