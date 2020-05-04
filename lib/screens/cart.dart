import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_ui_kit/domain_layer/models/cart_model.dart';
import 'package:restaurant_ui_kit/providers/app_provider.dart';
import 'package:restaurant_ui_kit/screens/checkout.dart';
import 'package:restaurant_ui_kit/util/foods.dart';
import 'package:restaurant_ui_kit/widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with AutomaticKeepAliveClientMixin<CartScreen> {
  @override
  Widget build(BuildContext context) {
    CartModel cart = Provider.of<AppProvider>(context).cart;
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView.builder(
          itemCount: cart == null ? 0 : cart.cart.length,
          itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(foods[index]);
            CartItemModel item = cart.cart[index];
//                print(foods);
//                print(foods.length);
            return CartItem(
              img: "assets/food1.jpeg",
              item: item,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Finalizar'),
        tooltip: "Checkout",
        icon: Icon(
          Icons.arrow_forward,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Checkout();
              },
            ),
          );
        },
        heroTag: Object(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
