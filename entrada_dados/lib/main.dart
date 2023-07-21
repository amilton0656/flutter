import 'package:entrada_dados/tela_secundaria.dart';
import 'package:flutter/material.dart';

import 'tela_principal.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/secundaria' :(context) => TelaSecundaria()
    },
    home: TelaPrincipal()
    ));
}

