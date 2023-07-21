import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregarItens() {
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item['titulo'] = "Título ${i} Loen ipsns sdfsdfskd";
      item['descricao'] = "Descrição ${i} Loen ipsns sdfsdfskd";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice) {
              // print("item ${indice}");
              return ListTile(
                title: Text(_itens[indice]['titulo']),
                subtitle: Text(_itens[indice]['descricao']),
              );
            }),
      ),
    );
  }
}
