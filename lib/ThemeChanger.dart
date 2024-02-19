import 'package:flutter/material.dart';

class ThemeChanger {
  static ThemeData darkTheme() => ThemeData.dark();
  static ThemeData lightTheme() => ThemeData.light();

  static setTheme(BuildContext context, ThemeData themeData) {
    final ThemeData _theme = themeData.copyWith();
    Navigator.pop(context); // Close the drawer
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => YourMainAppScreen(theme: _theme),
      ),
    );
  }
}


class YourMainAppScreen extends StatelessWidget {
  final ThemeData theme;

  const YourMainAppScreen({Key? key, required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      // The rest of your MaterialApp configuration
    );
  }
}
