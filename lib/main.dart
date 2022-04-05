//Se importan los paquetes a usar en flutter
import 'package:flutter/material.dart';

//Se declara la función principal
void main(){
  runApp(const MyApp());
}

//Se declara una clase llamada MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenido a Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bienvenido a Flutter'),
        ),
        body: const Center(
          child: Text('Hola Mundo'),
        ),
      ),
    );
  }
}


