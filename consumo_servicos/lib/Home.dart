import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerCEP = TextEditingController();
  // String CEPdigitado = '';
  Map<String, dynamic> retorno = {};


  _recuperarCEP() async {
  String _CEPdigitado = _controllerCEP.text;
    String url = 'https://viacep.com.br/ws/${_CEPdigitado}/json/';
    http.Response response;
    response = await http.get(Uri.parse(url));
    json.decode(response.body);

    setState(() {
      retorno = json.decode(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de serviço WEB'),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Digite o CEP'),
              onChanged: (value) => {
                // setState(
                //   () {
                //     CEPdigitado = value;
                //   },
                // )
              },
              controller: _controllerCEP,
            ),
            ElevatedButton(
                onPressed: () {
                  _recuperarCEP();
                },
                child: Text('Clique aqui')),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text('Logradouro: ${retorno["logradouro"]}\n\n'
                'Complemento: ${retorno["complemento"]}')
          ],
        ),
      ),
    );
  }
}
