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

  List itens = [
    {"titulo": "amilton", "descricao": "aaa"},
    {"titulo": "amilton", "descricao": "bbb"},
    {"titulo": "amilton", "descricao": "ccc"},
    {"titulo": "amilton", "descricao": "ddd"},
    {"titulo": "amilton", "descricao": "eee"},
    {"titulo": "amilton", "descricao": "fff"},
    {"titulo": "amilton", "descricao": "ggg"},
    {"titulo": "amilton", "descricao": "hhh"},
    {"titulo": "amilton", "descricao": "jjj"},
    {"titulo": "amilton", "descricao": "mmm"},
    {"titulo": "amilton", "descricao": "nnn"},
  ];

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    int numero = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: itens.length,
            itemBuilder: (context, indice) {
              ++numero;
              return ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(itens[indice]['titulo'] + ' - ${indice}'),
                        content: Text(itens[indice]['descricao']),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Sair'))
                        ],
                      );
                    },
                  );
                },
                onLongPress: () {
                  print('longo - ${indice}');
                },
                title: Text(itens[indice]['titulo'] + ' - ${indice}'),
                subtitle: Text(itens[indice]['descricao']),
              );
            }),
      ),
    );
  }
}
