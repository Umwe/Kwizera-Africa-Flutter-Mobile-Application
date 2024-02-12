import 'package:flutter/material.dart';
import 'CustomNavigationBar.dart';

import 'drawer_widget.dart'; // Import the DrawerWidget

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is the Settings Page'),
            // Other content specific to the SettingsPage
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        onAboutPressed: () {
          Navigator.pushNamed(context, '/about');
        },
        onHomePressed: () {
          Navigator.pushNamed(context, '/');
        },
        onCalculatorPressed: () {
          Navigator.pushNamed(context, '/profile');
        },
      ),
      endDrawer: DrawerWidget(), // Use DrawerWidget here
    );
  }
}
