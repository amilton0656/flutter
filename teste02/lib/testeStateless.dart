import 'package:flutter/material.dart';
import 'package:teste02/appController.dart';
// import 'package:teste02/testeStateful.dart';
import 'package:teste02/login_page.dart';

class TesteStateLess extends StatelessWidget {
  final String texto;

  const TesteStateLess({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppControler.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppControler.instance.isDarkTheme
                  ? Brightness.light
                  : Brightness.dark),
          // home: LoginPage(),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => TesteStateLess(texto: 'sss'),
          },
        );
      },
    );
  }
}
