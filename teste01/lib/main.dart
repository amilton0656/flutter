import 'package:flutter/material.dart';
import 'package:teste01/gradient_container.dart';

void main() {


    const List<Color> cores = [
    Color.fromARGB(255, 26, 2, 80),
    Color.fromARGB(255, 45, 7, 98),
  ];

  runApp(


    const MaterialApp(
      home: Scaffold(body: GradientContainer(cores)),
    ),
  );
}
