import 'package:flutter/material.dart';

import '/my_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/thegeekgypsy.png'),
          const SizedBox(height: 15),
          const Text(
            'Sachin Korgaonkar',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Project Manager with 22+ years of experience in AI & ML, .NET, SQL and \nMobile Application development.',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
