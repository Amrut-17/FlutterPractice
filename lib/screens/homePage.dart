import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/screens/first_screen.dart';
import 'package:flutter_dev_practice/screens/second_screen.dart';
import 'package:flutter_dev_practice/screens/third_screen.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          FirstScreen(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
    );
  }
}
