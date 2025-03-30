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
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Exibe a primeira imagem com BoxFit.cover
              Image.asset(
                'assets/images/Cat.jpg', // Caminho da imagem
                fit: BoxFit.cover, // Imagem cobre a área disponível
              ),
              // Exibe a segunda imagem com largura e altura específicas
              Image.asset(
                'assets/images/Dog.jpg', // Caminho da imagem
                fit: BoxFit.cover, // Imagem cobre a área disponível
                /*
                width: 200,  // Largura de 200px
                height: 200, // Altura de 200px
                */
              ),
              // Exibe a Imagem da Internet
              Image.network(
                'https://cdn.pixabay.com/photo/2022/11/07/16/09/outdoor-7576744_1280.jpg', // Link da Imagem
                fit: BoxFit.cover, // Imagem cobre a área disponível
              ),
            ],
          ),
        ),
      ),
    );
  }
}
