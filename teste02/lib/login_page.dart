import 'package:flutter/material.dart';
// import 'package:teste02/testeStateless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/dice-1.png'),
                    ),
                    // child: Image.network('https://play-lh.googleusercontent.com/ahJtMe0vfOlAu1XJVQ6rcaGrQBgtrEZQefHy7SXB7jpijKhu1Kkox90XDuH8RmcBOXNn')),
                  SizedBox(height: 20),
                  
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 20),
                      child: Column(
                        children: [
                          TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder()),
                                      ),
                                      SizedBox(height: 20),
                                      TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                                      ),
                                      SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        if (email == 'amilton@aaa.com' && password == '123') {
                          print('login ok');
                          Navigator.of(context).pushNamed('/home');
                        } else {
                          print('senha incorreta');
                        }
                      },
                      child: Text('Login'))
                        ],
                      ),
                    ),
                  ),

                  
                ],
              );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
      child: Scaffold(
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                  ListTile(
                    leading: Icon(Icons.home),
                    textColor: Colors.black,
                    title: Text('Início', style: TextStyle(color: Colors.black),),
                    subtitle: Text('subxxxxxxxxx'),
                  ),
                ListTile(
                    leading: Icon(Icons.logout),
                    textColor: Colors.black,
                    title: Text('Sair', style: TextStyle(color: Colors.black),),
                  ),
              ],
            ),
          ),
        ),
        appBar: AppBar(title: Text('Entrada')),
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: SizedBox(
            
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _body()
            ),
          ),
        ),
      ),
      ),
    );
  }
}
