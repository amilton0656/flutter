import 'package:flutter/material.dart';
import 'package:teste02/appController.dart';

class CustonSwitch extends StatelessWidget {
  const CustonSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
              value: AppControler.instance.isDarkTheme,
              onChanged: (value) {
                  AppControler.instance.changeTheme();
              });
  }
}