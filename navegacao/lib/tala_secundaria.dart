import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String? nome;
  TelaSecundaria(this.nome, {super.key});



  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela secundária'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Text('Nome: ${widget.nome}', style: TextStyle(fontSize: 30),),
            Padding(padding: EdgeInsets.only(top: 50)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para Tela Principal'),
            )
          ],
        ),
      ),
    );
  }
}
