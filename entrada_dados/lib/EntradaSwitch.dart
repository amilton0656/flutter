import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({super.key});

  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _escolhaUsuario = false;
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

            SwitchListTile(
                title: Text('Escolha...'),
                value: _escolhaUsuario,
                onChanged: (value) {
                  setState(() {
                    _escolhaUsuario = value;
                    saida = _escolhaUsuario.toString();
                  });
                }),

            // Switch(
            //     value: _escolhaUsuario,
            //     onChanged: (value) {
            //       setState(() {
            //         _escolhaUsuario = value;
            //         saida = _escolhaUsuario.toString();
            //       });
            //     }),

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
