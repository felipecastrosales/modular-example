import 'package:flutter_modular/flutter_modular.dart';

import 'package:modular_example/app/product/product_module.dart';

import 'category_page.dart';
import 'model/category_model_controller.dart';
import 'model/price_model.dart';

class CategoryModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        // Bind(
        //   (i) => CategoryModelController(),
        //   isLazy: true,
        //   isSingleton: false,
        // ),
        Bind.lazySingleton(
          (i) => PriceModel(),
        ),
        Bind.lazySingleton(
          (i) => CategoryModelController(
            priceModel: i(), // equal to: priceModel: i.get(),
          ),
        ),
        // Bind.singleton((i) => CategoryModelController(),),
        // Bind.factory((i) => CategoryModelController(),),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoryPage(
            category: args.data,
          ),
        ),
        ModuleRoute(
          '/product',
          module: ProductModule(),
        ),
      ];
}
