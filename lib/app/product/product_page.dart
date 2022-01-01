import 'package:flutter/material.dart';


class ProductPage extends StatelessWidget {
  final String? name;

  const ProductPage({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Column(
        children: [
          Text(name ?? 'Nome não enviado'),
        ],
      ),
    );
  }
}
