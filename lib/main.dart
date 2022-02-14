import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "StatefulWidget_Concept",
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String fName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form using StatefulWidget",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String firstName) {
                setState(() {
                  fName = firstName;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Hello !! \tI am $fName ",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 64),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

































// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: "Form Using StatefullWidget",
//       home: SimpleForm(),
//     ),
//   );
// }

// class SimpleForm extends StatefulWidget {
//   @override
//   _SimpleFormState createState() => _SimpleFormState();
// }

// class _SimpleFormState extends State<SimpleForm> {
//   String name = "";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Form using StatefulWidget",
//         ),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(20.0),
//         padding: EdgeInsets.all(10.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               onSubmitted: (String username) {
//                 setState(() {
//                   name = username;
//                 });
//               },
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Text(
//                 "Hello !! \nI am $name",
//                 style: TextStyle(
//                   color: Colors.amberAccent,
//                   fontSize: 30.0,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
