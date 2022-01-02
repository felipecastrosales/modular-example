import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:modular_example/app/category/model/price_model.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name ?? 'Nome não enviado'),
            TextButton(
              onPressed: () {
                var price = Modular.get<PriceModel>();
                developer.log('${price.hashCode}');
              },
              child: const Text('Get price'),
            ),
          ],
        ),
      ),
    );
  }
}
