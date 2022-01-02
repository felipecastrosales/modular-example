import 'package:flutter_modular/flutter_modular.dart';

import 'package:modular_example/app/category/category_module.dart';
import 'product_page.dart';

class ProductModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<Module> get imports => [
        CategoryModule(),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/:name/xyz',
      child: (context, args) => ProductPage(
        name: args.params['name'],
      ),
    ),
    ChildRoute(
      '/xyz',
      child: (context, args) => ProductPage(
        name: args.queryParams['name'],
      ),
    ),
  ];
}
