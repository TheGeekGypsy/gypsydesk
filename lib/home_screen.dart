import 'package:flutter/material.dart';

import 'my_drawer.dart'; //load this dart file to get drawer code on this home_screen because this page is loading at first

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Top appBar widget with text Home Screen.
      appBar: AppBar(
        backgroundColor: const Color(0xff3444B5),
        title: const Text('Home Screen'),
      ),
      drawer: const MyDrawer(),
      endDrawer: const MyDrawer(),
      body: Builder(
        builder: (context) {
          return Center(
            //button on Home screen with text 'Open Drawer'
            child: ElevatedButton(
              onPressed: () {
                //event on press, open the drawer
                Scaffold.of(context).openDrawer();
              },
              child: const Text('Open Drawer'),
            ),
          );
        },
      ),
    );
  }
}
