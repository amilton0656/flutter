import 'dart:async';

import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _controle = TextEditingController();
  String _saida = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Álcool ou Gasolina'),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              //
              Padding(padding: EdgeInsets.only(bottom: 30)),
              //
              Text('Saiba qual a melhor opção de abastecimento do seu veículo.',
                  style: TextStyle(fontSize: 25),
                  ),
                  //
              Padding(padding: EdgeInsets.only(bottom: 30)),
              //
              TextField(
                onSubmitted: (value) {},
                decoration: InputDecoration(label: Text('Preço Álcool. ex. 1,59')),
                style: TextStyle(fontSize: 25),
                keyboardType: TextInputType.number,

              ),
//
              Padding(padding: EdgeInsets.only(bottom: 30)),
              //
              TextField(
                onSubmitted: (value) {},
                decoration: InputDecoration(label: Text('Preço Gasolina. ex. 2,12')),
                style: TextStyle(fontSize: 25),
                keyboardType: TextInputType.number,

              )


              // Padding(
              //   padding: EdgeInsets.all(32),
              //   child: TextField(
              //     keyboardType: TextInputType.number,
              //     decoration: InputDecoration(
              //       labelText: 'Digite um valor',
              //     ),
              //     maxLength: 5,
              //     style: TextStyle(fontSize: 25, color: Colors.green),
              //     onChanged: (value) {
              //       setState(() {
              //         _saida = _controle.text;
              //       });
              //     },
              //     // onSubmitted: (value) {
              //     //   // print(value);
              //     // },
              //     controller: _controle,
              //   ),
              // ),
              // ElevatedButton(
              //     onPressed: () {
              //       print(_controle.text);
              //     },
              //     child: Text('Clique')),
              // Padding(
              //   padding: EdgeInsets.all(30),
              //   child: Text(_saida),
              // )
            ],
          ),
        ));
  }
}
