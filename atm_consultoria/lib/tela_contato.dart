import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({super.key});

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Contato'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/detalhe_contato.png'),
                  Text('Contato', 
                  style: TextStyle(
                    fontSize: 20,
                     fontWeight: FontWeight.bold, 
                     color: Colors.green),
                     )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('atendimento@atmconsultoria.com.br'),
                ),
                Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Telefone: 11 3232 0987'),
                ),
                Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Celular: 11 9 9652 3652'),
                ),
              
      
            ],
          ),
        
        ),
      ),
    );
  }
}