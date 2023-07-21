import 'package:flutter/material.dart';
import 'package:conversor_moedas/app/views/home_view.dart';

void main() {
  runApp(WidgetApp());
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
