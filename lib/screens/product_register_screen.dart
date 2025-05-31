
import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

class ProductRegisterScreen extends StatefulWidget {
  @override
  _ProductRegisterScreenState createState() => _ProductRegisterScreenState();
}

class _ProductRegisterScreenState extends State<ProductRegisterScreen> {
  final _nameController = TextEditingController();
  final _descController = TextEditingController();
  final _codeController = TextEditingController();
  final _unitController = TextEditingController();
  final _minStockController = TextEditingController();

  Future<void> scanBarcode() async {
    var result = await BarcodeScanner.scan();
    setState(() {
      _codeController.text = result.rawContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastrar Produto')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Nome')),
              TextField(controller: _descController, decoration: InputDecoration(labelText: 'Descrição')),
              Row(
                children: [
                  Expanded(
                    child: TextField(controller: _codeController, decoration: InputDecoration(labelText: 'Código')),
                  ),
                  IconButton(
                    icon: Icon(Icons.qr_code_scanner),
                    onPressed: scanBarcode,
                  )
                ],
              ),
              TextField(controller: _unitController, decoration: InputDecoration(labelText: 'Unidade')),
              TextField(controller: _minStockController, decoration: InputDecoration(labelText: 'Estoque Mínimo'), keyboardType: TextInputType.number),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Salvar'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Produto salvo localmente.')));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
