import 'package:flutter/material.dart';
import 'package:sushi_app/models/food.dart';

class FoodTitle extends StatelessWidget {
  final Food food;
  const FoodTitle({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          //imga

          //text

          //prince + rating
        ],
      ),
    );
  }
}
