import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 2;
  int rightDice = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        title: const Text(
          'ТАПШЫРМА-05',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffFF5353),
        elevation: 0.0,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  leftDice = Random().nextInt(7);
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Image.asset(
                  'assets/images/dice${leftDice == 0 ? leftDice == 1 : leftDice}.png',
                ),
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  rightDice = Random().nextInt(7);
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Image.asset(
                  'assets/images/dice${rightDice == 0 ? rightDice == 1 : rightDice}.png',
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
