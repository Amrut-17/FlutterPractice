import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/screens/table_screen.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "App Bar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: TableScreen(),
      ),
    );
  }
}
