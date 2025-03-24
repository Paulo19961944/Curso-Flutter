import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Aplicativo Olá Mundo',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
        ),
        body: Center(
          child: Text(
            'Olá Mundo'
          ),
        ),
      ),
    );
  }
}
