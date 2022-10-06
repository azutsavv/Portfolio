import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
      ),
     initialRoute: 'home',

     routes: {
      'home':(context) => homepage(),
      'about':(context) => Myabout(),
     },
      
    ); 
  }
}

