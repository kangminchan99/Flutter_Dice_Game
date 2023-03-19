import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
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
                      'images/dice1.png',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Image.asset(
                      'images/dice2.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            ButtonTheme(
                minWidth: 100,
                height: 60,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_fill,
                      size: 60,
                    )))
          ],
        ),
      ),
    );
  }
}
