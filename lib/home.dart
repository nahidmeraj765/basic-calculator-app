import 'package:flutter/material.dart';
import 'package:flutter_application_basic_calculator_app/button_style_row.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0, left: 5.0, right: 5.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(30),
                child: Text("52", style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ),
            ),
            Row(
              children: [
                ButtonStyleRow(text: 'AC', onClick: () {}),
                ButtonStyleRow(text: '%', onClick: () {}),
                ButtonStyleRow(text: '⌫', onClick: () {}),
                ButtonStyleRow(text: '÷', color: Colors.orange, onClick: () {}),
              ],
            ),
            Row(
              children: [
                ButtonStyleRow(text: '7', onClick: () {}),
                ButtonStyleRow(text: '8', onClick: () {}),
                ButtonStyleRow(text: '9', onClick: () {}),
                ButtonStyleRow(text: '×', color: Colors.orange, onClick: () {}),
              ],
            ),
            Row(
              children: [
                ButtonStyleRow(text: '4', onClick: () {}),
                ButtonStyleRow(text: '5', onClick: () {}),
                ButtonStyleRow(text: '6', onClick: () {}),
                ButtonStyleRow(text: '-', color: Colors.orange, onClick: () {}),
              ],
            ),
            Row(
              children: [
                ButtonStyleRow(text: '1', onClick: () {}),
                ButtonStyleRow(text: '2', onClick: () {}),
                ButtonStyleRow(text: '3', onClick: () {}),
                ButtonStyleRow(text: '+', color: Colors.orange, onClick: () {}),
              ],
            ),
            Row(
              children: [
                ButtonStyleRow(text: '00', onClick: () {}),
                ButtonStyleRow(text: '0', onClick: () {}),
                ButtonStyleRow(text: '.', onClick: () {}),
                ButtonStyleRow(text: '=', color: Colors.orange, onClick: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
