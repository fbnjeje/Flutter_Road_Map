import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Cart Shop Section'),
          backgroundColor: myPrimaryColor,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            //get food from cart
            final Food food = value.cart[index];
            //get name
            final String foodName = food.name;

            //get food price
            final String price = food.price;
            //return list title

            return ListTile(
              title: Text(foodName),
              subtitle: Text(price),
            );
          },
        ),
      ),
    );
  }
}
