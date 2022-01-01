import 'dart:developer' as developer;

import 'price_model.dart';

class CategoryModelController {
  PriceModel priceModel;
  CategoryModelController({required this.priceModel}) {
    developer.log('Category Model Controller $hashCode');
  }
}
