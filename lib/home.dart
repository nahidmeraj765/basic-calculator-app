import 'package:flutter/material.dart';
import 'package:flutter_application_basic_calculator_app/button_style_row.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _input = "0";
  String _output = "0";
  String _operator = "0";
  double num1 = 0;
  double num2 = 0;

  void buttonPressed(String value) {
    setState(() {
      if (value == "AC") {
        _input = "0";
        _output = "0";
        _operator = "";
        num1 = 0;
        num2 = 0;
      } else if (value == '=') {
        num2 = double.parse(_input);
        if (_operator == '+') {
          _output = (num1 + num2).toString();
        } else if (_operator == "-") {
          _output = (num1 - num2).toString();
        } else if (_operator == "*") {
          _output = (num1 * num2).toString();
        } else if (_operator == "/") {
          _output = (num2 != 0)
              ? (num1 / num2).toString()
              : "Can not divided by zero";
        }
        _input = _output;
      } else if (["+", "-", "*", "/"].contains(value)) {
        num1 = double.parse(_input);
        _operator = value;
        _input = "";
      } else {
        if (value == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 5.0,
          bottom: 20.0,
          left: 5.0,
          right: 5.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(30),
                child: Text(
                  _output,
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                ButtonStyleRow(
                  text: 'AC',
                  onClick: () {
                    buttonPressed('AC');
                  },
                ),
                ButtonStyleRow(text: '%', onClick: () {}),
                ButtonStyleRow(text: '⌫', onClick: () {}),
                ButtonStyleRow(
                  text: '÷',
                  color: Colors.orange,
                  onClick: () {
                    buttonPressed('/');
                  },
                ),
              ],
            ),
            Row(
              children: [
                ButtonStyleRow(
                  text: '7',
                  onClick: () {
                    buttonPressed('7');
                  },
                ),
                ButtonStyleRow(
                  text: '8',
                  onClick: () {
                    buttonPressed('8');
                  },
                ),
                ButtonStyleRow(
                  text: '9',
                  onClick: () {
                    buttonPressed('9');
                  },
                ),
                ButtonStyleRow(
                  text: '×',
                  color: Colors.orange,
                  onClick: () {
                    buttonPressed('*');
                  },
                ),
              ],
            ),
            Row(
              children: [
                ButtonStyleRow(
                  text: '4',
                  onClick: () {
                    buttonPressed('4');
                  },
                ),
                ButtonStyleRow(
                  text: '5',
                  onClick: () {
                    buttonPressed('5');
                  },
                ),
                ButtonStyleRow(
                  text: '6',
                  onClick: () {
                    buttonPressed('6');
                  },
                ),
                ButtonStyleRow(
                  text: '-',
                  color: Colors.orange,
                  onClick: () {
                    buttonPressed('-');
                  },
                ),
              ],
            ),
            Row(
              children: [
                ButtonStyleRow(
                  text: '1',
                  onClick: () {
                    buttonPressed('1');
                  },
                ),
                ButtonStyleRow(
                  text: '2',
                  onClick: () {
                    buttonPressed('2');
                  },
                ),
                ButtonStyleRow(
                  text: '3',
                  onClick: () {
                    buttonPressed('3');
                  },
                ),
                ButtonStyleRow(
                  text: '+',
                  color: Colors.orange,
                  onClick: () {
                    buttonPressed('+');
                  },
                ),
              ],
            ),
            Row(
              children: [
                ButtonStyleRow(
                  text: '00',
                  onClick: () {
                    buttonPressed('00');
                  },
                ),
                ButtonStyleRow(
                  text: '0',
                  onClick: () {
                    buttonPressed('0');
                  },
                ),
                ButtonStyleRow(
                  text: '.',
                  onClick: () {
                    buttonPressed('.');
                  },
                ),
                ButtonStyleRow(
                  text: '=',
                  color: Colors.orange,
                  onClick: () {
                    buttonPressed('=');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
