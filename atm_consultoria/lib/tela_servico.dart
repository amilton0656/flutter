import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({super.key});

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Servicos'),
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
                  Image.asset('assets/images/detalhe_servico.png'),
                  Text('Nosos Serviços', 
                  style: TextStyle(
                    fontSize: 20,
                     fontWeight: FontWeight.bold, 
                     color: Colors.green),
                     )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Consultoria'),
                ),
                Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Cálculo de preços'),
                ),
                Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Acompanhamento de Projetos'),
                ),
              
      
            ],
          ),
        
        ),
      ),
    );
  }
}