import 'dart:io';

import 'package:CollegeSpace/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int cnt = 0;
String name, email, pass, title, desc, subCode, college, year;
File img;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College Space',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: logIn(),
    );
  }
}
