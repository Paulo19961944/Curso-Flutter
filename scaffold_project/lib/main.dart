import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        body: const Center(
          child: Text(
            'This is a Scaffold'
          ),
        ), 
      ),
    );
  }
}
