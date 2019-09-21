import 'package:flutter/material.dart';
import 'package:projeto/ui/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "QUIZ",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Splashscreen(),
    );
  }
}

