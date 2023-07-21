import 'package:flutter/material.dart';
import 'package:teste02/testeSwitch.dart';
import 'package:teste02/custon_switch.dart';

class TesteStateFul extends StatefulWidget {
  @override
  State<TesteStateFul> createState() {
    return TesteStateFulState();
  }
}

class TesteStateFulState extends State<TesteStateFul> {
  int count = TesteSwitch.instance.contador;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste 02'),
        actions: [
          CustonSwitch()
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustonSwitch(),
            
        
              GestureDetector(
                child: Text(
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                    'contador $count'),
                onTap: () {
                  setState(() {
                    TesteSwitch.instance.subContador();
                  });
                  count = TesteSwitch.instance.contador;
                },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              TesteSwitch.instance.addContador();
            });
            count = TesteSwitch.instance.contador;
          }),
    );
  }
}
