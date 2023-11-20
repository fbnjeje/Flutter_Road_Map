import 'package:flutter/material.dart';
import 'package:sushi_app/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Shop Section'),
        backgroundColor: myPrimaryColor,
      ),
      body: ListView.builder(itemBuilder: (context, index) {}),
    );
  }
}
