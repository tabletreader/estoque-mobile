
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(EstoqueApp());
}

class EstoqueApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Estoque',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
