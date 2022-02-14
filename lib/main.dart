import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/screens/sample_pages.dart';

void main() {
  runApp(
    BottomNavBar(),
  );
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom NavBar",
      home: BottomMenu(),
    );
  }
}

class BottomMenu extends StatefulWidget {
  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  var _page = [HomePage(), AboutPage(), ContactPage()];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Bottom NavBar App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: _page[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Contact Us"),
        ],
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
    );
  }
}
