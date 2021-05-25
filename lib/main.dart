import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.grey[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_dice_number = 1;
  int right_dice_number = 1;

  void update() {
    setState(() {
      left_dice_number = Random().nextInt(6) + 1;
      right_dice_number = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                update();
              },
              child: Image.asset('images/dice$left_dice_number.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                update();
              },
              child: Image.asset('images/dice$right_dice_number.png'),
            ),
          ),
        ],
      ),
    );
  }
}
