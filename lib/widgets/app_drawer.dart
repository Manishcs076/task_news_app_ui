import 'package:flutter/material.dart';
import 'package:task/screens/video_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            child: AppBar(
              backgroundColor: Color.fromRGBO(21, 38, 5, 1),
              title: Text(''),
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Videos',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoApp()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
