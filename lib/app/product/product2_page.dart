import 'package:flutter/material.dart';


class Product2Page extends StatelessWidget {
  final String? name;

  const Product2Page({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product2'),
      ),
      body: Column(
        children: [
          Text(name ?? 'Nome não enviado'),
        ],
      ),
    );
  }
}
