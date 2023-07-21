import 'package:flutter/material.dart';
import 'package:teste02/appController.dart';
import 'package:teste02/custon_switch.dart';

class TesteStateFul extends StatefulWidget {
  @override
  State<TesteStateFul> createState() {
    return TesteStateFulState();
  }
}

class TesteStateFulState extends State<TesteStateFul> {
  int count = 0;

  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste 02'),
        actions: [
          CustonSwitch()
        ],
      ),
      body: Center(
        child: CustonSwitch(),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          }),
    );
  }
}

