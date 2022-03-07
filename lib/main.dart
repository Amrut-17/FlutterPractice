import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/pages/detail_page.dart';
import 'package:flutter_dev_practice/pages/navpages/main_page.dart';
import 'package:flutter_dev_practice/pages/welcome_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Practice",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPage(),
    );
  }
}
