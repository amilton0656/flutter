import 'dart:math';

import 'package:cara_coroa/tela_resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {



  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var jogada = 0;

  void _jogar() {
    jogada = Random().nextInt(2);

    print('jogou - $jogada');

    Navigator.push(context, 
      MaterialPageRoute(builder: (context) => Resultado(jogada: jogada))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        // width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Image.asset('assets/images/logo.png'),
            ),
            GestureDetector(
                onTap: () {
                  _jogar();
                },
                child: Image.asset('assets/images/botao_jogar.png'))
          ],
        ),
      ),
    );
  }
}
