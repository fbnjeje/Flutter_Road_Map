import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/theme/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;

  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  //quantity

  //decrement quantity

  //increment quantity

  int quantityCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  //image
                  Image.asset(
                    widget.food.imgPath,
                    height: 200,
                  ),
                  //space
                  const SizedBox(
                    height: 25,
                  ),

                  //rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[900],
                      ),
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  //foodname
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),

                  const SizedBox(height: 25),
                  //description

                  Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 25),

                  Text(
                    widget.food.description,
                    style: TextStyle(
                        color: Colors.grey[600], fontSize: 14, height: 2),
                  )
                ],
              ),
            ),
          ),

          //TODO Quality + cuantity + add to cart

          Container(
            color: myPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(children: [
                //Price + quantity
                Row(
                  children: [
                    //prince
                    Text(
                      widget.food.price,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                          child: IconButton(
                            icon: Icons(Icons.remove),
                            onPressed: decrementQuantity(),
                          ),
                        )
                        //quantity count

                        //plus buttons
                      ],
                    )
                  ],
                )
              ]),
            ),

            //add to cart
          )
        ],
      ),
    );
  }
}
