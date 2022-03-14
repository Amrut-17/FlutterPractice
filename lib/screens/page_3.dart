import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      child: Center(
          child: Text(
        "These are Introduction Screens",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
