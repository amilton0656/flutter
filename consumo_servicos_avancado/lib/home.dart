import 'package:consumo_servicos_avancado/Post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _urlBase = 'https://jsonplaceholder.typicode.com';

  Future<List<Post>> _recuperarPostagens() async {
    http.Response response = await http.get(Uri.parse(_urlBase + '/posts'));
    var dadosJson = json.decode(response.body);
    print(_urlBase);

    List<Post> postagens = [];
    for (var post in dadosJson) {
      Post p = Post(post['userId'], post['id'], post['title'], post['body']);
      postagens.add(p);
    }
    print('postagens: ${postagens.length.toString()}');

    return postagens;
  }

  _put() async {
    var corpo = jsonEncode(
      {
        "userId": 120,
        "id": null,
        "title": "teste put",
        "body": "aaaaaaaaaaaaaaa"
      },
    );

    http.Response response = await http.put(
      Uri.parse(_urlBase + '/posts/2'),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: corpo,
    );

    print('resposta: ${response.statusCode}');
    print('resposta: ${response.body}');
  }

  _post() async {
    //passar de json para string
    // var corpo = jsonEncode(
    //   {
    //     "userId": 120,
    //     "id": null,
    //     "title": "teste post",
    //     "body": "aaaaaaaaaaaaaaa"
    //   },
    // );

    Post post = Post(120, 1, "Titulo...", "Conteúdo...");

    var corpo = json.encode( //transf json para string
      post.toJson() //cria o json
      );

    http.Response response = await http.post(
      Uri.parse(_urlBase + '/posts'),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: corpo,
    );

    print('resposta: ${response.statusCode}');
    print('resposta: ${response.body}');
  }

  _patch() async {
    var corpo = jsonEncode(
      {
        "userId": 120,
        "id": null,
        "title": "teste post",
      },
    );

    http.Response response = await http.patch(
      Uri.parse(_urlBase + '/posts'),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: corpo,
    );

    print('resposta: ${response.statusCode}');
    print('resposta: ${response.body}');
  }

  _delete() async {
    var corpo = jsonEncode(
      {
        "userId": 120,
        "id": null,
        "title": "teste post",
      },
    );

    http.Response response = await http.delete(
      Uri.parse(_urlBase + '/posts/2'),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
    );

    print('resposta: ${response.statusCode}');
    print('resposta: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de serviço avançadox'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('pressed');
                    _post();
                  },
                  child: Text('Salvar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _put();
                  },
                  child: Text('Atualizar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _delete();
                  },
                  child: Text('Remover'),
                )
              ],
            ),
            Expanded(
              child: FutureBuilder<List<Post>>(
                  future: _recuperarPostagens(),
                  builder: (context, snapshot) {
                    String resultado = '';
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        print('none');
                        resultado = 'Não consegui conectar';
                        break;

                      case ConnectionState.waiting:
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        );

                      case ConnectionState.active:
                        print('active');
                        break;

                      case ConnectionState.done:
                        print('done ');

                        if (snapshot.hasError) {
                          resultado = 'Erro ao  conectar';
                          print('erro');
                          break;
                        } else {
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                List<Post>? lista = snapshot.data;
                                lista = snapshot.data;
                                Post post = lista![index];
                                return ListTile(
                                  title: Text(post.title),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text(post.body),
                                  ),
                                );
                              });
                        }
                    }
                    return Center(child: Text(resultado));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
