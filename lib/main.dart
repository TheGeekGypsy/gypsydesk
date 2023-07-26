// श्री गणेशाय नमः //

import 'package:flutter/material.dart';
import '/home_screen.dart'; //import all those dart files which will be loaded in runtime.

//This is the function which will trigger first
void main() {
  //This will run the app with Inside constructor
  runApp(const GypsyDesk());
}

//If a widget can change—when a user interacts with it, for example—it's stateful.
//A stateless widget never changes. Icon , IconButton , and Text are examples of stateless widgets.
class GypsyDesk extends StatelessWidget {
  const GypsyDesk({super.key});

//Material and Scaffold widgets are most important widget to build an app.
//flutter works with widgets, and widgets over widgets
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //This will disable the debug patch on the app. Anyways it will be always disabled when in production.
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blueAccent,
      ),
      home:
          const HomeScreen(), //Loading this screen at start, which is available in home_screen.dart
    );
  }
}
