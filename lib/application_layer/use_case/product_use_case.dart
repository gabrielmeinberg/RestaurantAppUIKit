import 'package:restaurant_ui_kit/application_layer/adapters/product_adapter.dart';
import 'package:restaurant_ui_kit/domain_layer/models/product_model.dart';

class ProductUserCase {
  Future<List<ProductModel>> getAllProducts() async{
    return ProductService().getAll(ProductAdapterAPi());
  }
}