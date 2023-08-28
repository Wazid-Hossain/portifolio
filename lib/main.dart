import 'package:flutter/material.dart';
import 'package:portifolio/about.dart';
import 'package:portifolio/home.dart';
import 'package:portifolio/projects.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => MyHome(),
      'myabout':(context) => MyAbout(),
      'projects': (context) => MyProject(),
    },
  ),
  );
}
