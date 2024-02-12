// drawer_widget.dart
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white),
            ),
          ),

          ListTile(
            title: Text('Home'),
            selected: ModalRoute.of(context)?.settings.name == '/',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
          ),

          ListTile(
            title: Text('Profile'),
            selected: ModalRoute.of(context)?.settings.name == '/profile',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
            },
          ),

          ListTile(
            title: Text('Settings'),
            selected: ModalRoute.of(context)?.settings.name == '/settings',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settings');
            },
          ),

          ListTile(
            title: Text('About'),
            selected: ModalRoute.of(context)?.settings.name == '/about',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}
