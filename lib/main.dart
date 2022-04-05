//Se importan los paquetes a usar en flutter
import 'package:flutter/material.dart';
//Se importa la librería de las palabras en Inglés
import 'package:english_words/english_words.dart';

//Se declara la función principal
void main(){
  runApp(const MyApp());
}

//Se declara una clase llamada MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /*final wordPair = WordPair.random();*/
    return const MaterialApp(
      title: 'Statup Name Generator',
      debugShowCheckedModeBanner: false,
      home: RandomWords()
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords>{
  ///Se declaran dos variables de tipo final
  ///Una es donde almacenará una colección de palabras
  final _suggestions = <WordPair>[];
  ///Y la otra es donde le dará el tamaño de la letra
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statup Name Generator'),
      ),
      body: ListView.builder(padding: const EdgeInsets.all(16.0), itemBuilder: (context, i){
        if(i.isOdd) return const Divider();
        final index = i ~/ 2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
        );
      }),
    );
  }
}
