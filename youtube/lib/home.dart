import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1
        ),
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/youtube.png',
        width: 98, height: 22,),
        actions: [
          IconButton(
              onPressed: () {
                print('acao : videocam');
              },
              icon: Icon(Icons.videocam)
              ),

            IconButton(
              onPressed: () {
                print('acao : pesquisa');
              },
              icon: Icon(Icons.search)
              ),

            IconButton(
              onPressed: () {
                print('acao : conta');
              },
              icon: Icon(Icons.account_circle)
              ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.home),
            
          ),
          BottomNavigationBarItem(
            label: 'Em alta',
            backgroundColor: Colors.red,
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            label: 'Inscrições',
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Biblioteca',
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
          ),
        ])
        
    );
  }
}
