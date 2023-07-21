import 'package:flutter/material.dart';
import 'package:navegacao/tala_secundaria.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  String _nome = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            TextField(
              onChanged: (value) {
                setState(() {
                  _nome = value;
                });
              },
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/secundaria');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaSecundaria(_nome),
                          )
                          );
                },
                child: Text('Ir para Tela Secundária'))
          ],
        ),
      ),
    );
  }
}
