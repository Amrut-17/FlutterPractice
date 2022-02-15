import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/screens/sample_pages.dart';

void main() {
  runApp(
    HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Page Navigation",
      home: NavigationTest(),
    );
  }
}

class NavigationTest extends StatefulWidget {
  @override
  _NavigationTestState createState() => _NavigationTestState();
}

class _NavigationTestState extends State<NavigationTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade500,
        title: Text(
          "Navigation Test",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "Click Here",
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20.0),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AppPages()));
          },
        ),
      ),
    );
  }
}
