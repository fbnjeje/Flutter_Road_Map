import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

          Image.asset(
            food.imgPath,
            height: 140,
          ),

          //text
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),
          //prince + rating

          SizedBox(
            width: 160,
            child: Row(children: [
              //price
              Text(food.price),

              //rate
              Icon(Icons.star),
              Text(food.rating)
            ]),
          )
        ],
      ),
    );
  }
}
