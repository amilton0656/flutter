import 'package:consumo_servicos_avancado/Post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HomeFL extends StatefulWidget {
  const HomeFL({super.key});

  @override
  State<HomeFL> createState() => _HomeFLState();
}

class _HomeFLState extends State<HomeFL> {
  String _urlBase = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> _recuperarPostagens() async {
    http.Response response = await http.get(Uri.parse(_urlBase));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de serviço avançado'),
      ),
      body: FutureBuilder<List<Post>>(
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
    );
  }
}
