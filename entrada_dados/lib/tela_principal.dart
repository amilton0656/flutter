import 'package:entrada_dados/tela_secundaria.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela principal'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 32),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secundaria');
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => TelaSecundaria(entrada: 'xxxxxxxxxx')));
              },
              child: Text('Ir para a Segunda Tela'),
            ),
          ],
        ),
      ),
    );
  }
}
