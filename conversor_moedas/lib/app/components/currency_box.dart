
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 56,
                      child: DropdownButton(
                        iconEnabledColor: Colors.amber,
                        isExpanded: true,
                        underline: Container(height: 1, color: Colors.amber,),
                        items: [
                        DropdownMenuItem(child: Text('Real'), value: '1',),
                        DropdownMenuItem(child: Text('Dolar'), value: '2',),
                        DropdownMenuItem(child: Text('Euro'), value: '3',),
                        DropdownMenuItem(child: Text('Bitcoin'), value: '4',),
                      ], onChanged: (value) {}),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)
                        )
                      ),
                    ),
                  )
                ],
              );
  }
}