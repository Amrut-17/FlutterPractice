import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/screens/sample_pages.dart';

class DrawerFunctions extends StatelessWidget {
  static const String _img =
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 27),
                  height: 130,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(_img),
                    ),
                  ),
                ),
                Text(
                  "Amrut",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              "Setting",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              "Logout",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            leading: Icon(Icons.logout),
            onTap: null,
          )
        ],
      ),
    );
  }
}
