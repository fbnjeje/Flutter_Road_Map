import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({super.key, required this.food});

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //imga

          Image.asset(
            food.imgPath,
            height: 200,
          ),

          //text
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 25),
          ),
          //prince + rating

          SizedBox(
            width: 160,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //price
                  Text(
                    food.price,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  //rate
                  Row(children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[900],
                    ),
                    Text(
                      food.rating,
                      style: const TextStyle(color: Colors.grey),
                    )
                  ]),
                ]),
          )
        ],
      ),
    );
  }
}
