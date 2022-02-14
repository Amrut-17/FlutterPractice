import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Home Page",
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is About Page",
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Contact Page",
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
