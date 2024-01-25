import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  get children => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //imga

            Image.asset(
              food.imgPath,
              height: 78,
            ),

            //text
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 30),
            ),
            //prince + rating

            SizedBox(
              width: 170,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    Text(
                      food.price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    //rate
                    Row(children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[900],
                      ),
                      Text(
                        food.rating,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      )
                    ]),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
