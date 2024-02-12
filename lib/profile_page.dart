import 'package:flutter/material.dart';
import 'drawer_widget.dart'; // Import the DrawerWidget

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text('This is the Profile Page'),
      ),
      endDrawer: DrawerWidget(), // Use DrawerWidget here
    );
  }
}
