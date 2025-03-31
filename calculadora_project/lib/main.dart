// Importa o Material App
import 'package:flutter/material.dart';

// Função Principal
void main(){
  runApp(MyApp());
}

// Classe MyApp herda de StatefulWidget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Sobreescreve o State com MyAppState
  @override
  State<MyApp> createState() => _MyAppState();
}

// Classe Privada MyAppState herda de State
class _MyAppState extends State<MyApp> {
  String numero = '0';

  void calcular(String tecla) {
    switch(tecla) {
      // Caso o valor for numerico, captura o numero
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9': 
      case ',':
        setState(() {
          // Captura o número
          numero += tecla;
          
          // Substitui a vírgula por ponto
          numero = numero.replaceAll(',', '.');
          
          // Verifica se o número é inteiro ou com vírgula
          if (!numero.contains('.')) {
            int numeroInt = int.parse(numero);
            numero = numeroInt.toString();
          } 
        });
        break;
      
      // Reseta o Valor em 0
      case 'AC':
        setState(() {
          numero = '0';
        });
        break;
      default:
        numero += tecla;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Usa o MaterialApp
    return MaterialApp(
      // Estrutura da Página
      home: Scaffold(
        // Cabeçalho
        appBar: AppBar(
          backgroundColor: Colors.blue,
            title: Center(
              child: Text(
              'Calculadora',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
        // Conteúdo da Página
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('0');
                  },
                  child: Text(
                    numero,
                    style: TextStyle(
                      fontSize: 72,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('AC');
                  },
                  child: Text('AC',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                Text('<X', 
                  style: TextStyle(
                    fontSize: 48,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('7');
                  },
                  child: Text('7',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    calcular('8');
                  },
                  child: Text('8',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('9');
                  },
                  child: Text('9',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('/');
                  },
                  child: Text('/',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    calcular('4');
                  },
                  child: Text('4', 
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('5');
                  },
                  child: Text('5', 
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('6');
                  },
                  child: Text('6',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('X');
                  },
                  child: Text('X',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    calcular('1');
                  },
                  child: Text('1',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('2');
                  },
                  child: Text('2',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('3');
                  },
                  child: Text('3',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('-');
                  },
                  child: Text('-', 
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              GestureDetector(
                onTap: (){
                  calcular('0');
                },
                  child: Text('0',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),                
                GestureDetector(
                  onTap: (){
                    calcular(',');
                  },
                  child: Text(',',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                Text('=', 
                  style: TextStyle(
                    fontSize: 48,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    calcular('+');
                  },
                  child: Text('+',
                    style: TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Coluna 6',
            ),
          ],
        )
      ),
    );
  }
}
