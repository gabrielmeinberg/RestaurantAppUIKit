import 'package:restaurant_ui_kit/domain_layer/models/cart_model.dart';

abstract class OrderPort{
  Future<void> makeOrder(CartModel cart, int client);
}