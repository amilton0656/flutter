import 'package:flutter/material.dart';

class TextoPersonalizado extends StatelessWidget {
  const TextoPersonalizado(this.texto, {super.key});

  final String texto;

  @override
  Widget build(context) {
    return Text(
        style: const TextStyle(fontSize: 28, color: Colors.white),
        texto);
  }
}
