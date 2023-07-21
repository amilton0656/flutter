import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset('assets/images/dice-1.png', width: 200),
          const SizedBox(height: 20),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Roll dice!'))
        ]),
  }
}