import 'package:flutter/material.dart';
import 'package:conversor_moedas/app/components/currency_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 20),
          child: Column(
            
            children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png')),
              ),
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
              
            //   child: 
            CurrencyBox(), 
             SizedBox(
              height: 10,
            ), 
            CurrencyBox(), 
            // ),

            SizedBox(
              height: 100,
            ),

            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber, foregroundColor: Colors.white),
                onPressed: () {}, 
                child: Text('CONVERTER', style: TextStyle(fontSize: 18),),
                
                ),
            ),

          ]),
        ),
      ),
    );
  }
}
