import 'package:flutter/material.dart';
import 'package:new_sample/view/home.dart';
import 'package:new_sample/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash=true;
  LoadHome(){

    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        showingSplash=false;
      });

    });
  }
  void initState(){
    super.initState();
    LoadHome();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News',
      theme: ThemeData(
        primaryColor: Colors.blue,


      ),
      home: showingSplash?SplashScreen():HomeScreen()
    );
  }
}

