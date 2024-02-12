import 'package:flutter/material.dart';
import 'CustomNavigationBar.dart';
import 'drawer_widget.dart'; // Import the DrawerWidget

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is the Profile Page'),
            // Other content specific to the ProfilePage
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
          // Do nothing or add specific functionality for ProfilePage button press
        },
      ),
      endDrawer: DrawerWidget(), // Use DrawerWidget here
    );
  }
}
