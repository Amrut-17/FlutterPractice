import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Center(
        child: Text(
          "WelCome",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
