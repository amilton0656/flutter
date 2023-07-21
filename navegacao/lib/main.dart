import 'package:flutter/material.dart';
import 'package:navegacao/tala_secundaria.dart';
import 'package:navegacao/tela_principal.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => TelaPrincipal(),
      '/secundaria': (context) => TelaSecundaria(''),
    },
    // home: TelaPrincipal(),
  ));
}
