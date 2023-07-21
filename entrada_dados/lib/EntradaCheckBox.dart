import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({super.key});

  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  double _escolhaUsuario = 5;
  String? saida;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Dados'),
      ),
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Slider(
              min: 0,
              max: 10,
              label: 'sdfsdfsdf',
              divisions: 10,
              value: _escolhaUsuario, 
              onChanged: (value) {
                  setState(() {
                    _escolhaUsuario = value;
                    saida = _escolhaUsuario.toString();
                  });
                }),

            Padding(padding: EdgeInsets.only(bottom: 30)),
            Text('Saida: $saida'),
             Padding(padding: EdgeInsets.only(bottom: 30)),

            ElevatedButton(onPressed: () {}, child: Text('Verificar', style: TextStyle(fontSize: 25),))
          ],
        ),
      ),
    );
  }
}
