import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Dice(),
  ));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int topDice = 1;
  int bottomDice = 1;

  Roll() {
    setState(() {
      topDice = Random().nextInt(6) + 1;
      bottomDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Roll Dice'),
          centerTitle: true,
          backgroundColor: Colors.red[300],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: OutlinedButton(
                onPressed: () {
                  Roll();
                },
                child: Image.asset(
                  'image/dice$topDice.png',
                  fit: BoxFit.fill,
                  width: 300,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: OutlinedButton(
                onPressed: () {
                  Roll();
                },
                child: Image.asset(
                  'image/dice$bottomDice.png',
                  fit: BoxFit.fill,
                  width: 300,
                ),
              ),
            ),
          ],
        ));
  }
}
