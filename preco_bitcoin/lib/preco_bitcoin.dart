import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _valorBitcoin = 'R\$ 000,01';

  void _atualizarBitcoin() async {
    String url = 'https://blockchain.info/ticker';
    http.Response response;
    response = await http.get(Uri.parse(url));

    Map<String, dynamic> retorno;
    setState(() {
      retorno = json.decode(response.body);
      _valorBitcoin = retorno["ARS"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/images/bitcoin.png'),
              Padding(padding: EdgeInsets.only(top: 40)),
              Text(
                _valorBitcoin,
                style: TextStyle(fontSize: 35),
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
              ElevatedButton(
                onPressed: () {
                  _atualizarBitcoin();
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 18, bottom: 18),
                  child: Text(
                    'Atualizar',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff7931a),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )
            ]),
      ),
    );
  }
}
