import 'package:flutter/material.dart';
import 'CustomNavigationBar.dart';
import 'drawer_widget.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _output = '0';
  String _currentInput = '';
  double _num1 = 0;
  double _num2 = 0;
  String _operation = '';

  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _output = '0';
        _currentInput = '';
        _num1 = 0;
        _num2 = 0;
        _operation = '';
      } else if (buttonText == '+' || buttonText == '-' || buttonText == '*' || buttonText == '/') {
        _num1 = double.parse(_currentInput);
        _operation = buttonText;
        _currentInput = '';
      } else if (buttonText == '=') {
        _num2 = double.parse(_currentInput);
        switch (_operation) {
          case '+':
            _output = (_num1 + _num2).toString();
            break;
          case '-':
            _output = (_num1 - _num2).toString();
            break;
          case '*':
            _output = (_num1 * _num2).toString();
            break;
          case '/':
            if (_num2 != 0) {
              _output = (_num1 / _num2).toString();
            } else {
              _output = 'Error';
            }
            break;
        }
        _currentInput = _output;
        _num1 = 0;
        _num2 = 0;
        _operation = '';
      } else {
        _currentInput += buttonText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12),
            alignment: Alignment.centerRight,
            child: Text(
              _currentInput,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildCalcButton('7'),
              _buildCalcButton('8'),
              _buildCalcButton('9'),
              _buildCalcButton('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildCalcButton('4'),
              _buildCalcButton('5'),
              _buildCalcButton('6'),
              _buildCalcButton('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildCalcButton('1'),
              _buildCalcButton('2'),
              _buildCalcButton('3'),
              _buildCalcButton('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildCalcButton('0'),
              _buildCalcButton('C'),
              _buildCalcButton('='),
              _buildCalcButton('+'),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        onAboutPressed: () {
          Navigator.pushNamed(context, '/about');
        },
        onHomePressed: () {
          Navigator.pushNamed(context, '/');
        },
        onCalculatorPressed: () {
          Navigator.pushNamed(context, '/Calculator');
        },
      ),
      endDrawer: DrawerWidget(),
    );
  }

  Widget _buildCalcButton(String buttonText) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        onPrimary: Colors.white,
        padding: EdgeInsets.all(20),
        textStyle: TextStyle(fontSize: 20),
      ),
      onPressed: () => _onButtonPressed(buttonText),
      child: Text(buttonText),
    );
  }
}
