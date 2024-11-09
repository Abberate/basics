import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';


const starAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colorList});

  final List<Color> colorList;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorList, begin: starAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
