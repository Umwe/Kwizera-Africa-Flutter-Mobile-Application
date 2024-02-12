// about_page.dart
import 'package:flutter/material.dart';
import 'drawer_widget.dart'; // Import the DrawerWidget

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: Text('This is the About Page'),
      ),
      endDrawer: DrawerWidget(), // Use DrawerWidget here
    );
  }
}
