// Importa o Material Design
import 'package:flutter/material.dart';

// Função Principal
void main() {
  runApp(MyApp());
}

// Classe MyApp como Stateful Widget
class MyApp extends StatefulWidget {
  // Construtor da Superclasse
  const MyApp({super.key});

  // Sobreescreve o State com o MyAppState
  @override
  State<MyApp> createState() => _MyAppState();
}

// Cria uma Classe Privada MyAppState
class _MyAppState extends State<MyApp> {
  // Cria o Widget que será exibido na tela e Sobreescreve o método Build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Example',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Scaffold Example',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Icon(
            Icons.phone,
            size: 32,
          ),
          Padding(
              padding: EdgeInsets.only(left: 8),
              child: Center(
                child: Text(
                  'Meu Aplicativo'
                ),
              ),
          ),
        ],
        ),
      ),
    );
  }
}
