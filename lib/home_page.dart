import 'package:flutter/material.dart';
import 'drawer_widget.dart'; // Import the DrawerWidget

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('This is the Home Page'),
      ),
      endDrawer: DrawerWidget(), // Use DrawerWidget here
    );
  }
}
