import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/components/food_tile.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/theme/Colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  List foodMenu = [
    Food(
        name: 'Sushi',
        price: '21.00',
        imgPath: 'lib/assets/sushi.png',
        rating: '4.4'),
    Food(
        name: 'Tuna',
        price: '15.00',
        imgPath: 'lib/assets/uramaki.png',
        rating: '4.9'),
  ];


//Navegate to food item details page
void navigateToFoodDetails( int index){
  Navigator.push(context, MaterialPageRoute(builder: (context) =>FoodDetailsPage()(index),),);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Nagano',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //promo banner
        Container(
          decoration: BoxDecoration(
              color: myPrimaryColor,
              //border radius
              borderRadius: BorderRadius.circular(29)),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //promo message
              Column(
                children: [
                  //reedem button
                  Text(
                    'Get a 32% Promo',
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 25, color: Colors.white),
                  ),

                  const SizedBox(height: 20),

                  MyButton(text: 'Redeem', onTap: () {})
                ],
              ),
              //image
              Image.asset(
                'lib/assets/sushi (2).png',
                height: 82,
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 25,
        ),

        //search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: myPrimaryColor),
                    borderRadius: BorderRadius.circular(20)),
                hintText: 'Search Here...'),
          ),
        ),

        const SizedBox(height: 25),

        //menu list
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          child: Text(
            'Food Menu',
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.w900,
                color: Colors.grey[800]),
          ),
        ),

        const SizedBox(height: 25),

        //food view
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodMenu.length,
            itemBuilder: (context, index) => FoodTile(
              food: foodMenu[index],
              onTap: ,
            ),
          ),
        ),

        //space

        const SizedBox(height: 25),

        //popular food

        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey[100]),
          margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Guide line
              Row(
                children: [
                  //Image

                  Image.asset(
                    'lib/assets/sushi (2).png',
                    height: 60,
                  ),

                  const SizedBox(width: 20),

                  //info

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //text

                      Text(
                        "Sancocho's",
                        style: GoogleFonts.dmSerifDisplay(fontSize: 25),
                      ),

                      const SizedBox(height: 10),

                      //text

                      Text(
                        '\$ 21.99',
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ],
                  ),
                ],
              ),

              //heart Icon
              const Icon(
                Icons.favorite_outline,
                color: Colors.grey,
                size: 38,
              )
            ],
          ),
        )
      ]),
    );
  }
}
