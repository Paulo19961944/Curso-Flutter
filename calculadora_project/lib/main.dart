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
  // Variáveis dos Numeros
  String numero = '0';
  String operacao = '';
  double primeiroNumero = 0;

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
        if (numero == '0') {
          numero = tecla; // Substitui o 0 inicial pelo número digitado
        } else {
          numero += tecla; // Adiciona o número à string
        }

        // Substitui a vírgula por ponto
        numero = numero.replaceAll(',', '.');
      });
      break;

    // Faz a Adição
    case '+':
      setState(() {
        if (operacao.isNotEmpty) {
          calcularResultado();
        }
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0'; // Resetando número após a operação
      });
      break;

    // Faz a Subtração
    case '-':
      setState(() {
        if (operacao.isNotEmpty) {
          calcularResultado();
        }
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0'; // Resetando número após a operação
      });
      break;

    // Faz a Multiplicação
    case 'X':
      setState(() {
        if (operacao.isNotEmpty) {
          calcularResultado();
        }
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0'; // Resetando número após a operação
      });
      break;

    // Faz a Divisão
    case '/':
      setState(() {
        if (operacao.isNotEmpty) {
          calcularResultado();
        }
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0'; // Resetando número após a operação
      });
      break;

    // Calcula o Resultado
    case '=':
      setState(() {
        calcularResultado();
        operacao = ''; // Reseta operação após o cálculo
      });
      break;

    // Reseta o Valor em 0
    case 'AC':
      setState(() {
        numero = '0';
        primeiroNumero = 0; // Reseta o primeiro número
        operacao = ''; // Reseta a operação
      });
      break;

    case '<X':
      setState(() {
        numero = numero.substring(0, numero.length - 1);
      });
      break;

    default:
      numero += tecla;
      break;
  }
}

// Função para calcular o resultado com base na operação
void calcularResultado() {
  double resultado;
  double num2 = double.parse(numero);

  switch (operacao) {
    case '+':
      resultado = primeiroNumero + num2;
      break;
    case '-':
      resultado = primeiroNumero - num2;
      break;
    case 'X':
      resultado = primeiroNumero * num2;
      break;
    case '/':
      if (num2 != 0) {
        resultado = primeiroNumero / num2;
      } else {
        resultado = 0;
      }
      break;

    default:
      resultado = num2; // No caso de um valor simples, usamos o número diretamente
  }

  // Formata o número para não exibir casas decimais se for inteiro
  if (resultado == resultado.toInt()) {
    numero = resultado.toInt().toString(); // Se for inteiro, remove as casas decimais
  } else {
    numero = resultado.toStringAsFixed(2).replaceAll('.', ','); // Se não, mantém 2 casas decimais
  }

  primeiroNumero = 0; // Reseta o primeiro número para evitar cálculos acumulados
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
                fontSize: 28,
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
                GestureDetector(
                  onTap: () {
                    calcular('<X');
                  },
                  child: Icon(
                    Icons.backspace,
                    size: 48,
                  )
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
                GestureDetector(
                  onTap: (){
                    calcular('=');
                  },
                  child: Text('=', 
                    style: TextStyle(
                      fontSize: 48,
                    ),
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
          ],
        )
      ),
    );
  }
}
