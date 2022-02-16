import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/screens/bottom_navBar.dart';
import 'package:flutter_dev_practice/screens/create_drawer.dart';
import 'package:flutter_dev_practice/screens/sample_pages.dart';

void main() {
  runApp(
    MainApp(),
  );
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer Application",
      home: DrawerApplication(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class DrawerApplication extends StatefulWidget {
  @override
  _DrawerApplicationState createState() => _DrawerApplicationState();
}

class _DrawerApplicationState extends State<DrawerApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer Navigation",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Text("First Page"),
      ),
      drawer: DrawerFunctions(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
