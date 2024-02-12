import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final void Function() onAboutPressed;
  final void Function() onHomePressed;
  final void Function() onCalculatorPressed;

  CustomNavigationBar({
    required this.onAboutPressed,
    required this.onHomePressed,
    required this.onCalculatorPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: onAboutPressed,
            child: Text('About'),
          ),
          ElevatedButton(
            onPressed: onHomePressed,
            child: Text('Home'),
          ),
          ElevatedButton(
            onPressed: onCalculatorPressed,
            child: Text('Calculator'),
          ),
        ],
      ),
    );
  }
}
