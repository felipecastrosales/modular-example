import 'dart:developer' as developer;

import 'package:flutter_modular/flutter_modular.dart';

import 'price_model.dart';

class CategoryModelController implements Disposable {
  PriceModel priceModel;
  CategoryModelController({required this.priceModel}) {
    developer.log('Category Model Controller $hashCode');
  }

  @override
  void dispose() {}
}
