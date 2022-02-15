import 'package:flutter/material.dart';

class AppPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Redirected on ...."),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "First Page",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30.0,
              ),
            ),
            FloatingActionButton(
              child: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
