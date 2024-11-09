import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  late int activeDiceNumber;

  void rollDice() {
    setState(() {
      activeDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  void initState() {
    rollDice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceNumber.png',
          width: 200.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            //padding:const EdgeInsets.only(top: 25.0),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28.0),
          ),
          child: const Text('Roll dice'),
        )
      ],
    );
  }
}
