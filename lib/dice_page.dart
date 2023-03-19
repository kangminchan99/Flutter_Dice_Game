import 'package:flutter/material.dart';
import 'dart:math';

import 'package:fluttertoast/fluttertoast.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Dice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(35),
              child: Row(
                children: [
                  Expanded(
                    // // flex - 요소들의 공간 크기 배치 지정
                    // flex: 2,
                    child: Image.asset(
                      'images/dice$leftDice.png',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Image.asset(
                      'images/dice$rightDice.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            IconButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                  });
                  showToast("Left Dice: $leftDice, Right Dice: $rightDice ");
                },
                icon: const Icon(
                  Icons.play_circle_fill,
                  size: 60,
                )),
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
