import 'package:dice_app/text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var current = 2;
  void roller() {
    setState(() {
      current = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/dice-$current.png',
            width: 250,
          ),
        ),
       const SizedBox(height: 20),
        TextButton(
          onPressed: roller,
          child: MyText('Roll Dice'),
        ),
      ],
    );
  }
}
