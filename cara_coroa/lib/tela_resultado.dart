import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  int? jogada;

  Resultado({this.jogada, super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  var AssetImage = 'assets/images/moeda_cara.png';

  @override
  Widget build(BuildContext context) {
    var AssetImage = widget.jogada == 1 ? 'assets/images/moeda_cara.png' : 'assets/images/moeda_coroa.png';


    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Image.asset(AssetImage)),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('assets/images/botao_voltar.png'),
                ),
            Text('${widget.jogada}')
          ],
        ),
      ),
    );
  }
}
