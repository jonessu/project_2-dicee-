import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left = 1;
  int right = 1;

  void changeDiceFace() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$left.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          //Get students to create the second die as a challenge
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$right.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}
