import 'package:flutter/material.dart';

class AlcoolGasolina extends StatefulWidget {
  const AlcoolGasolina({super.key});

  @override
  State<AlcoolGasolina> createState() => _AlcoolGasolinaState();
}

class _AlcoolGasolinaState extends State<AlcoolGasolina> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = '';

  void _limparCampos() {
      _controllerAlcool.text = '';
      _controllerGasolina.text = '';
  }


  void _calcular() {
    double? _precoAlcool = double.tryParse(_controllerAlcool.text);
    double? _precoGasolina = double.tryParse(_controllerGasolina.text);

    if (_precoAlcool == null || _precoGasolina == null || _precoGasolina <= 0) {
      setState(() {
        _textoResultado =
            'Número inválido, digite números maiores que 0 e utilizando (.)';
      });
    } else {
      setState(() {
        _textoResultado = (_precoAlcool / _precoGasolina) >= 0.7
            ? 'Melhor abastecer com gasolina.'
            : 'Melhor abastecer com álcool.';
      });
      _limparCampos();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Álcool ou Gasolina'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset('assets/images/logo.png'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  'Saiba qual a melhor opção de abastecimento de seu veículo.',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              TextField(
                onSubmitted: (value) {},
                decoration:
                    InputDecoration(label: Text('Preço Álcool. ex.: 1,59')),
                style: TextStyle(fontSize: 22),
                keyboardType: TextInputType.number,
                controller: _controllerAlcool,
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              TextField(
                onSubmitted: (value) {},
                decoration:
                    InputDecoration(label: Text('Preço Gasolina. ex.: 2,07')),
                style: TextStyle(fontSize: 22),
                keyboardType: TextInputType.number,
                controller: _controllerGasolina,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: _calcular,
                  child: Text(
                    'Calcular',
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(_textoResultado,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
