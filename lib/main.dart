import 'dart:async';
import 'package:accident_report_app/home_screen.dart';
import 'package:accident_report_app/screens/Members.dart';
import 'package:accident_report_app/screens/homepage.dart';
import 'package:accident_report_app/screens/preview.dart';
import 'package:accident_report_app/screens/readme.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Container (
      height: 300,
        width: 300,
        color: Colors.lightGreenAccent,
        child: Image.asset('images/AR_logo.png'),
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold (
      appBar: AppBar(title:Text(" Accident Report Application")
      ),
      body: Column(
          children: [
            TabBar(
              tabs: [
                Tab (
                  icon: Icon(
                    Icons.home,
                    color: Colors.teal,
                  ),
                ),
                Tab (
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: Colors.teal,
                  ),
                ),
                Tab (
                  icon: Icon(
                    Icons.preview,
                    color: Colors.teal,
                  ),
                ),
                Tab (
                  icon: Icon(
                    Icons.chrome_reader_mode_outlined,
                    color: Colors.teal,
                  ),
                ),
                Tab (
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.teal,
                  ),
                ),

              ]
            ),

             Expanded(child:
             TabBarView(children:[
               //1st
               sec(),

               //2st
            HomeScreen(),
               //3st
               view(),

              readme(),
               //4st
              team(),
             ]
             ),
             ),
          ]
      ),
    ),
    );
  }
}



