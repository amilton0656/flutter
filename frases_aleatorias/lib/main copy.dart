import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  runApp(MaterialApp(home: HomeStateful()));
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({super.key});

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _texto = "Amilton";

  @override
  Widget build(BuildContext context) {
    var _titulo = "Instagram";
    return Scaffold(
        appBar: AppBar(
          title: Text(_titulo),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Column(
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    String xx = 'Amilton';
                    setState(() {
                      _texto = _texto == xx
                          ? 'Amilton José Rocha'
                          : xx;
                    });
                  },
                  child: Text("Clique aqui")),
              Text('$_texto'),
            ],
          ),
        ));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("Conteúdo Principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text('text1'),
              Text('text1'),
            ],
          ),
        ),
      ),
    );
  }
}
