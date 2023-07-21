import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({super.key});

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Clientes'),
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
                  Image.asset('assets/images/detalhe_cliente.png'),
                  Text('Clientes', 
                  style: TextStyle(
                    fontSize: 20,
                     fontWeight: FontWeight.bold, 
                     color: Colors.green),
                     )
                ],
              ),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset('assets/images/cliente1.png'),
                ),
                Text('Empresa de Software'),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset('assets/images/cliente2.png'),
                ),
              Text('Empresa de Auditoria'),
            ],
          ),
        
        ),
      ),
    );
  }
}