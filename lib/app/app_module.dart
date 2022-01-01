import 'package:flutter_modular/flutter_modular.dart';

import 'product/product_module.dart';
import 'splash/splash_page.dart';
import 'category/category_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute(
          '/category',
          module: CategoryModule(),
        ),
        ModuleRoute(
          '/product',
          module: ProductModule(),
        ),
      ];

}
