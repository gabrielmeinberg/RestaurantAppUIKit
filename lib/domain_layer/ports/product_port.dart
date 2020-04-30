import 'package:restaurant_ui_kit/domain_layer/models/product_model.dart';

abstract class ProductPort{
  Future<List<ProductModel>> getProducts(int id);
}