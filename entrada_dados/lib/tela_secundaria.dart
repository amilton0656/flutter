import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String? entrada;

  TelaSecundaria({this.entrada, super.key});

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Secundária'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Text('Tela Secundária - ${widget.entrada}'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('voltar'))
          ],
        ),
      ),
    );
  }
}
