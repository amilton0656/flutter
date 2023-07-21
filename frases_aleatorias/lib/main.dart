import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List frases = [
    'frase 1',
    'frase 2',
    'frase 3',
    'frase 4',
  ];

  int numFrase = Random().nextInt(4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Frases do Dia'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            Text(
              frases[numFrase],
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  numFrase = Random().nextInt(4);
                });
              },
              child: Text('Nova Frase'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
