import 'package:flutter/material.dart';
import 'CustomNavigationBar.dart';
import 'drawer_widget.dart'; // Import the DrawerWidget

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is the About Page'),
            // Other content specific to the AboutPage
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        onAboutPressed: () {
          // Do nothing or add specific functionality for AboutPage button press
        },
        onHomePressed: () {
          Navigator.pushNamed(context, '/');
        },
        onCalculatorPressed: () {
          Navigator.pushNamed(context, '/Calculator');
        },
      ),
      endDrawer: DrawerWidget(), // Use DrawerWidget here
    );
  }
}
