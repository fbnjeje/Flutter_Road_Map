import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  removeFromCart(Food food, BuildContext context) {
    // get Access
    final shop = context.read<Shop>();

    // delete food item

    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: myPrimaryColor,
        appBar: AppBar(
          title: const Text('Cart Shop Section'),
          backgroundColor: myPrimaryColor,
          elevation: 0,
        ),
        body: Column(
          children: [
            //CUSTOMER CART

            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  //get food from cart
                  final Food food = value.cart[index];
                  //get name
                  final String foodName = food.name;

                  //get food price
                  final String price = food.price;
                  //return list title

                  return Container(
                    decoration: BoxDecoration(
                        color: mySecondaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        price,
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[200],
                        ),
                        onPressed: () => removeFromCart(food, context),
                      ),
                    ),
                  );
                },
              ),
            ),
            //PAY BUTTON

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(text: 'Pay now!', onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
