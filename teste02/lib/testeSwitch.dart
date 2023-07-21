import 'package:flutter/material.dart';

class TesteSwitch extends ChangeNotifier {
  static TesteSwitch instance = TesteSwitch();

  int contador = 0;

  addContador() {
    contador++;
    notifyListeners();
  }

  subContador() {
    contador--;
    notifyListeners();
  }


}
