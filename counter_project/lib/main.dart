// Importa o Material
import 'package:flutter/material.dart';

// Função Principal para rodar o Aplicativo
void main() {
  runApp(const MyApp());
}

// Define a classe MyApp que herda de StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Construtor da Classe MyApp

  // Widget do Material App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      home: const CounterScreen(),
    );
  }
}

// Classe CounterScreen que herda de Stateful Widget
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key}); // Construtor da CLasse CounterScreen

  // Cria um Estado da Classe CounterScreen
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// Classe _CounterScreenState que herda de State
class _CounterScreenState extends State<CounterScreen> {
  // Inicializa o Contador em 0
  int count = 0;

  // Classe que Adiciona o Contador e muda o estado na tela
  void addCount() {
    setState(() {
      count++;
    });
  }

  // Classe que Subtrai o Contador e muda o estado na tela
  void subtractCount() {
    setState(() {
      count--;
    });
  }

  // Cria o Widget Principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App', // Titulo do AppBar
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: addCount,
              child: const Text(
                'Add Count (+)',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: subtractCount,
              child: const Text(
                'Subtract Count (-)',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
