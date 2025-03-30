// Importa o Material App
import 'package:flutter/material.dart';

// Função Principal
void main() {
  runApp(MyApp());
}

// Classe MyApp herda do StatefulWidget
class MyApp extends StatefulWidget {
  // Construtor da Classe MyApp herda da Superclasse
  const MyApp({super.key});

  // Sobreescreve o Estado no método createState
  @override
  State<MyApp> createState() => _MyAppState();
}

// Classe _MyAppState herda de State
class _MyAppState extends State<MyApp> {
  // Sobreescreve o Método Build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Imagens',  // Título na AppBar
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        body: Column(
          children: [
            // Exibe a primeira imagem com BoxFit.cover
            Image.asset(
              'assets/images/Cat.png', // Caminho da imagem
              fit: BoxFit.cover, // Imagem cobre a área disponível
            ),
            // Exibe a segunda imagem com largura e altura específicas
            Image.asset(
              'assets/images/Dog.png', // Caminho da imagem
              width: 200,  // Largura de 200px
              height: 200, // Altura de 200px
            ),
          ],
        ),
      ),
    );
  }
}
