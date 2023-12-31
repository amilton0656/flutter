
import 'package:atm_consultoria/tela_cliente.dart';
import 'package:atm_consultoria/tela_contato.dart';
import 'package:atm_consultoria/tela_empresa.dart';
import 'package:atm_consultoria/tela_servico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa() {
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => TelaEmpresa()));
    
  }

  void _abrirServico() {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => TelaServico()));
  }

  void _abrirCliente() {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => TelaCliente()));
  }

  void _abrirContato() {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => TelaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            Padding(padding: EdgeInsets.only(bottom: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset('assets/images/menu_empresa.png'),
                ),

                GestureDetector(
                  onTap: _abrirServico,
                  child: Image.asset('assets/images/menu_servico.png'),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _abrirCliente,
                  child: Image.asset('assets/images/menu_cliente.png'),
                ),

                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset('assets/images/menu_contato.png'),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}