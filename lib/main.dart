import 'package:flutter/material.dart';
import 'CustomNavigationBar.dart';
import 'about_page.dart'; // Import the Dart file for the AboutPage
import 'profile_page.dart'; // Import the Dart file for the ProfilePage
import 'settings_page.dart'; // Import the Dart file for the ProfilePage
import 'drawer_widget.dart';
import 'calculator_page.dart'; // Import the calculator page


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Assignment 2 App '),
      routes: {
        '/about': (context) => AboutPage(),
        '/profile': (context) => ProfilePage(),
        '/settings': (context) => SettingsPage(),
        '/calculator': (context) => CalculatorPage(), // Add the calculator route
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }

  void _onDrawerItemPressed(String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => _openDrawer(context),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to my mobile phone application',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Press any key for navigations',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        onAboutPressed: () {
          Navigator.pushNamed(context, '/about');
        },
        onHomePressed: () {
          // Do nothing or add specific functionality for Home button press
        },

        onCalculatorPressed: () {
          Navigator.pushNamed(context, '/calculator');
        },
      ),
      endDrawer: DrawerWidget(), // Use DrawerWidget here
    );
  }
}
