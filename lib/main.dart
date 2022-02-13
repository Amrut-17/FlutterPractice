import 'package:flutter/material.dart';

void main() {
  runApp(
    Material(
      color: Colors.grey,
      child: Center(
        child: Text(
          "Hello Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
