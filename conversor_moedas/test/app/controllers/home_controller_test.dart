import 'dart:convert';

import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final HomeController = HomeController(fromText: fromText, toText: toText);

  test('Deve converter de real para dolar', () => {
    toText.text = '2.0';
    HomeController.Converter();
    expect(fromText.text, '0.36');
  });
}
