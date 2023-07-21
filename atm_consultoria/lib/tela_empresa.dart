import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({super.key});

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Empresa'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/detalhe_empresa.png'),
                  Text('Sobre a Empresa', 
                  style: TextStyle(
                    fontSize: 20,
                     fontWeight: FontWeight.bold, 
                     color: Colors.green),
                     )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 16)),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae justo ipsum. Vivamus fermentum a ligula vitae rhoncus. Ut nisi dui, ornare nec dapibus quis, sagittis ut turpis. Donec cursus iaculis commodo. Curabitur ante neque, porta in feugiat eu, volutpat sed dolor. Nulla eu enim vel tellus consequat tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ut quam massa. Proin vel ligula ut elit consequat dictum. Fusce condimentum pharetra diam nec consectetur. Praesent leo purus, scelerisque eu velit nec, sollicitudin sodales mauris.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae justo ipsum. Vivamus fermentum a ligula vitae rhoncus. Ut nisi dui, ornare nec dapibus quis, sagittis ut turpis. Donec cursus iaculis commodo. Curabitur ante neque, porta in feugiat eu, volutpat sed dolor. Nulla eu enim vel tellus consequat tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ut quam massa. Proin vel ligula ut elit consequat dictum. Fusce condimentum pharetra diam nec consectetur. Praesent leo purus, scelerisque eu velit nec, sollicitudin sodales mauris.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae justo ipsum. Vivamus fermentum a ligula vitae rhoncus. Ut nisi dui, ornare nec dapibus quis, sagittis ut turpis. Donec cursus iaculis commodo. Curabitur ante neque, porta in feugiat eu, volutpat sed dolor. Nulla eu enim vel tellus consequat tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ut quam massa. Proin vel ligula ut elit consequat dictum. Fusce condimentum pharetra diam nec consectetur. Praesent leo purus, scelerisque eu velit nec, sollicitudin sodales mauris.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae justo ipsum. Vivamus fermentum a ligula vitae rhoncus. Ut nisi dui, ornare nec dapibus quis, sagittis ut turpis. Donec cursus iaculis commodo. Curabitur ante neque, porta in feugiat eu, volutpat sed dolor. Nulla eu enim vel tellus consequat tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ut quam massa. Proin vel ligula ut elit consequat dictum. Fusce condimentum pharetra diam nec consectetur. Praesent leo purus, scelerisque eu velit nec, sollicitudin sodales mauris.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae justo ipsum. Vivamus fermentum a ligula vitae rhoncus. Ut nisi dui, ornare nec dapibus quis, sagittis ut turpis. Donec cursus iaculis commodo. Curabitur ante neque, porta in feugiat eu, volutpat sed dolor. Nulla eu enim vel tellus consequat tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ut quam massa. Proin vel ligula ut elit consequat dictum. Fusce condimentum pharetra diam nec consectetur. Praesent leo purus, scelerisque eu velit nec, sollicitudin sodales mauris.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae justo ipsum. Vivamus fermentum a ligula vitae rhoncus. Ut nisi dui, ornare nec dapibus quis, sagittis ut turpis. Donec cursus iaculis commodo. Curabitur ante neque, porta in feugiat eu, volutpat sed dolor. Nulla eu enim vel tellus consequat tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce ut quam massa. Proin vel ligula ut elit consequat dictum. Fusce condimentum pharetra diam nec consectetur. Praesent leo purus, scelerisque eu velit nec, sollicitudin sodales mauris.',

              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
              ),
      
            ],
          ),
        
        ),
      ),
    );
  }
}