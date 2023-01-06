import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 2;

  void changedice() {
    setState(() {
      leftdicenumber = Random().nextInt(5) + 1;
      rightdicenumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset(
                'images/dice$leftdicenumber.png',
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset(
                'images/dice$rightdicenumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
