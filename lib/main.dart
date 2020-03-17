import 'package:csgonews/pages/home_page.dart';
import 'package:csgonews/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
    routes: {
        "/": (BuildContext context) => IntroPage(),
        "/home": (BuildContext context) => HomePage(),
    },
    );
  }
}


