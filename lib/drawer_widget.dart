// drawer_widget.dart
import 'package:flutter/material.dart';
import 'ThemeChanger.dart';

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

          // New elements
          ListTile(
            title: Text('Preference'),
            selected: ModalRoute.of(context)?.settings.name == '/preference',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/preference');
            },
          ),

          // Dropdown for theme selection
          ListTile(
            title: Text('Theme'),
            selected: ModalRoute.of(context)?.settings.name == '/theme',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/theme');
            },
          ),

          // Dropdown menu for theme selection
          ListTile(
            title: DropdownButton<String>(
              value: Theme.of(context).brightness == Brightness.dark
                  ? 'Dark Theme'
                  : 'Light Theme',
              onChanged: (String? newValue) {
                if (newValue == 'Dark Theme') {
                  // Set dark theme
                  ThemeChanger.setTheme(context, ThemeChanger.darkTheme());
                } else {
                  // Set light theme
                  ThemeChanger.setTheme(context, ThemeChanger.lightTheme());
                }
              },
              items: <String>['Dark Theme', 'Light Theme']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),

          ListTile(
            title: Text('Contacts'),
            selected: ModalRoute.of(context)?.settings.name == '/contacts',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contacts');
            },
          ),
        ],
      ),
    );
  }
}
