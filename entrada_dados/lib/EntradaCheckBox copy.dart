import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({super.key});

  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {



  bool? _comidaBrasileira = false;
  bool? _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Dados'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


            CheckboxListTile(
              title: Text('Comida brasileira'),
              subtitle: Text('A melhor do mundo'),
              // secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
                onChanged: (value) {
                  setState(() {
                     _comidaBrasileira = value;
                    print(value);
                  });
                }),

                CheckboxListTile(
              title: Text('Comida mexicana'),
              subtitle: Text('A melhor do mundo'),
              // secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
                onChanged: (value) {
                  setState(() {
                     _comidaMexicana = value;
                    print(value);
                  });
                }),
                Padding(padding: EdgeInsets.only(bottom: 30)),

                ElevatedButton(onPressed: () {}, child: Text('Verificar', style: TextStyle(fontSize: 25),))
              
              


            /*
            Text('Comida brasileira'),
            Checkbox(
                value: opcao,
                onChanged: (value) {
                  setState(() {
                     opcao = value;
                    print(value);
                  });
                })
            */
          ],
        ),
      ),
    );
  }
}
