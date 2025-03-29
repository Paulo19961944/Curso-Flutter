// Importa o Material App
import 'package:flutter/material.dart';

// Função Principal
void main(){
  runApp(MyApp());
}

// Classe MyApp herda de Stateful Widget (Pode modificar o estado)
class MyApp extends StatefulWidget {
  // Construtor da Superclasse
  const MyApp({super.key});

  // Sobreescreve o método CreateState como o _MyAppState
  @override
  State<MyApp> createState() => _MyAppState();
}

// Classe _MyAppState herda de State (Pode modificar o estado)
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Stack App',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),

        // O Elemento Stack permite empilhar os elementos um em cima do outro
        body: Stack(
          alignment: AlignmentDirectional.center, // Alinha o Container ao Centro
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),

            // Posiciona o Elemento de forma especifica
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
