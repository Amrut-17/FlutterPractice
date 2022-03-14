import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: Center(
        child: Text(
          "How Are You ?",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
