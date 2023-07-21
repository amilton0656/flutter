import 'package:flutter/material.dart';

class TesteStateFul extends StatefulWidget {
  @override
  State<TesteStateFul> createState() {
    return TesteStateFulState();
  }
}

class TesteStateFulState extends State<TesteStateFul> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text(
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, color: Colors.white),
              'contador $count'),
          onTap: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}
