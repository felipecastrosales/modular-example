import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String? category;

  const CategoryPage({
    Key? key,
    this.category,
  }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: Center(
        child: Text(
          widget.category ?? 'Sem categoria enviada',
        ),
      ),
    );
  }
}
