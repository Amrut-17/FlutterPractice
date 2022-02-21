import 'package:flutter/material.dart';

void main() {
  runApp(
    HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppBar Tut",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "AppBar Tutorial",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active),
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("Item 1")),
                PopupMenuItem(child: Text("Item 2")),
                PopupMenuItem(child: Text("Item 3")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
