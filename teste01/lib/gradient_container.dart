import 'package:flutter/material.dart';
// import 'package:teste01/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

rollDice() {}

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.cores, {super.key});

  final List<Color> cores;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: cores,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: 
      ),
    );
  }
}
