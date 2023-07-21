import 'package:flutter/material.dart';

main() {
  runApp(Tinder());
}

class Tinder extends StatelessWidget {
  const Tinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(100, 254, 109, 110),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/images/tinder.gif'),
            ),
            SizedBox(height: 30),
            Text(
              'Uma boa opção de lazer',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text('com segurança e discrição',
                style: TextStyle(color: Colors.white, fontSize: 14)),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  fixedSize: const Size(200, 50),
                  textStyle: const TextStyle(fontSize: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text('Entrar'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
