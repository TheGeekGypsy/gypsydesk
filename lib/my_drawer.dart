import 'package:flutter/material.dart';

//package thegeekgypsy_desk is defined in AndroidManifest.xml --> android:label="thegeekgypsy_desk"
import 'package:thegeekgypsy_desk/home_screen.dart';
import 'package:thegeekgypsy_desk/profile_screen.dart';
import 'package:thegeekgypsy_desk/text_icon_button.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          // Header part of the drawer
          InkWell(
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const ProfileScreen(),
              ),
            ),
            child: buildHeader(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextIconButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                    ),
                  ),
                  icon: Icons.home,
                  label: 'Home',
                ),
                const TextIconButton(
                  icon: Icons.shopping_cart,
                  label: 'My Blog',
                ),
                const TextIconButton(
                  icon: Icons.wallet_giftcard,
                  label: 'Books',
                ),
                const TextIconButton(
                  icon: Icons.settings,
                  label: 'Projects',
                ),
                TextIconButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const ProfileScreen(),
                    ),
                  ),
                  icon: Icons.add_photo_alternate,
                  label: 'My Profile',
                ),
                const Divider(
                  height: 50,
                  color: Colors.black,
                  thickness: 1,
                ),
                TextIconButton(
                  onPressed: () {
                    Scaffold.of(context).closeDrawer();
                  },
                  icon: Icons.logout,
                  label: 'Log Out',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildHeader() => InkWell(
      child: Container(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 20,
        ),
        color: const Color(0xff3444B5),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile2.webp'),
            ),
            SizedBox(height: 15),
            Text(
              'The Geek Gypsy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Icon(Icons.location_on, color: Colors.white),
                Text(
                  'Sachin Korgaonkar',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ],
        ),
      ),
    );
