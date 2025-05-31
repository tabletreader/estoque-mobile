
import 'package:flutter/material.dart';
import 'product_register_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Controle de Estoque')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.add_box),
              label: Text('Cadastrar Produto'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductRegisterScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
