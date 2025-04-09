// Importa o Material App
import 'package:flutter/material.dart';

// Função Principal
void main() {
  runApp(MyApp());
}

class Argumentos {
  final int id;
  final String nome;

  Argumentos(this.id, this.nome);
}

// Classe MyApp Herda de StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Sobreescreve o Método Build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Tela1(),
        Tela2.routeName: (context) => Tela2(),
      },
    );
  }
}

// Primeira Tela Herda de um StatelessWidget
class Tela1 extends StatelessWidget {
  // Construtor da Tela
  const Tela1({super.key});

  // Sobreescreve o Método Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2196F3),
        title: Text(
          'Tela 1',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        // Botão de Navegação
        child: ElevatedButton(
          child: Text('Ir para a Tela 2'),
          onPressed: () {
            // Passando os argumentos ao navegar para Tela 2
            Navigator.pushNamed(
              context,
              Tela2.routeName,
              arguments: Argumentos(1, 'Argumento'),
            );
          },
        ),
      ),
    );
  }
}

// Classe de Tela 2 Herda de StatelessWidget
class Tela2 extends StatelessWidget {
  static const routeName = '/tela2';

  // Construtor da Tela 2
  const Tela2({super.key});

  // Sobreescreve o método build
  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Tela 2 - ' + (argumentos?.nome ?? ''),
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        // Botão de Navegação
        child: ElevatedButton(
          child: Text('Ir para a Tela 1'),
          onPressed: () {
            // Retorna a Tela Anterior
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}
