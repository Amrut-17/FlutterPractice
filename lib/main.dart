import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Amruts First App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Material(
          child: Center(
            child: Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.amberAccent,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
