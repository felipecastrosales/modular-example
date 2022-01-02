import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'model/category_model_controller.dart';

class CategoryPage extends StatefulWidget {
  final String? category;

  const CategoryPage({
    Key? key,
    this.category,
  }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState
    extends ModularState<CategoryPage, CategoryModelController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.category ?? 'Sem categoria enviada',
            ),
            TextButton(
              onPressed: () {
                developer.log('${controller.hashCode}');
              },
              child: Text(
                widget.category ?? 'Sem categoria enviada',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
