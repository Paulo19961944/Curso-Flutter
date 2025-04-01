// Importa o Material App
import 'package:flutter/material.dart';

// Função Principal
void main(){
  runApp(MyApp());
}

// Classe MyApp Herda de StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Sobreescreve o Método Build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tela1(),
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
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF2196F3),
            title: Text('Tela 1',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          body: Center(
            // Botão de Navegação
            child: ElevatedButton(
              // Texto do Botão
              child: Text(
                'Ir para a Tela 2',
                ),
                // Ação ao Pressionar a Tela
                onPressed: () {
                  // Navega para a Tela 2
                  Navigator.push(
                    context, 
                    // Cria a Rota para a Tela 2
                    MaterialPageRoute(
                      builder: (context) {
                      return Tela2();
                    }),
                  );
                },
              ),
          ),
        ),
      ),
    );
  }
}

// Classe de Tela 2 Herda de StatelessWidget
class Tela2 extends StatelessWidget {
  // Construtor da Tela 2
  const Tela2({super.key});

  // Sobreescreve o método build
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Tela 2',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          body: Center(
            // Botão de Navegação
            child: ElevatedButton(
              // Texto do Botão
              child: Text(
                'Ir para a Tela 1',
                ),
                // Ação ao Clicar no Botão
                onPressed: () {
                  // Retorna a Tela Anterior
                  Navigator.pop(
                    context, 
                  );
                },
              ),
          ),
        ),
      ),
    );
  }
}
