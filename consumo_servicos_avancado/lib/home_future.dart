// import 'package:consumo_servicos_avancado/Post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HomeF extends StatefulWidget {
  const HomeF({super.key});

  @override
  State<HomeF> createState() => _HomeFState();
}

class _HomeFState extends State<HomeF> {
  Future<Map> _recuperarPrecos() async {
    String url = 'https://blockchain.info/ticker';
    http.Response response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: (){}, 
                child: Text('Salvar'),
                ),

                ElevatedButton(
                onPressed: (){}, 
                child: Text('Salvar'),
                ),

                ElevatedButton(
                onPressed: (){}, 
                child: Text('Salvar'),
                )
            ],
          ),
          FutureBuilder<Map>(
              future: _recuperarPrecos(),
              builder: (context, snapshot) {
                String resultado;
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    print('none');
                    resultado = 'none';
                    break;
    
                  case ConnectionState.waiting:
                    print('waiting');
                    resultado = 'carregando...';
                    break;
    
                  case ConnectionState.active:
                    print('active');
                    resultado = 'active';
                    break;
    
                  case ConnectionState.done:
                    print('done');
    
                    if (snapshot.hasError) {
                      resultado = 'Ocorreu um erro ao carregar os dados.';
                    } else {
                      double valor = snapshot.data?["BRL"]["buy"];
                      resultado = 'Valor: ${valor.toString()}';
                    }
                    break;
                }
                return Center(child: Text(resultado));
              }),
        ],
      ),
    );
  }
}
