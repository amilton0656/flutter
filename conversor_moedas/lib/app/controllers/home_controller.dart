import 'package:flutter/material.dart';
import 'package:conversor_moedas/app/models/currency_model.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController fromText;
  final TextEditingController toText;

  CurrencyModel fromCurrency;
  CurrencyModel toCurrency;

  HomeController({required this.fromText, this.toText}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value toCurrency.euro;
    } else if (fromCurrency.name == 'BitCoin') {
      returnValue = value toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
