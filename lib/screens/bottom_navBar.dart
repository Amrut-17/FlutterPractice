import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_rounded), label: "Prize"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Contact Us"),
      ],
      currentIndex: _selectedItem,
      onTap: (setValue) {
        setState(() {
          _selectedItem = setValue;
        });
      },
    );
  }
}
