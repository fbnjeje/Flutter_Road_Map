import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/components/food_tile.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/screens/food_details_page.dart';
import 'package:sushi_app/theme/Colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  void navigateToFoodDetails(int index) {
//get the shop and its menu

    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[900],
        elevation: 0,
        title: const Text('Nagano'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cartpage');
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: myPrimaryColor,
                ),
                child: Column(
                  children: [
                    const Text(
                      'Navega con nosotros',
                      style: TextStyle(fontSize: 18),
                    ),
                    Image.asset('lib/assets/sushi.png', height: 110)
                  ],
                )),
            ListTile(
              title: const Text('Cart'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pushNamed(context, '/cartpage');
              },
            ),
            ListTile(
              title: const Text('Back'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pushNamed(context, '/intropage');
              },
            ),
            ListTile(
              title: const Text('IntroPage'),
              onTap: () {
                // Update the state of the app
                // Then close the drawer
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
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
              onTap: () => navigateToFoodDetails(index),
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

              // //heart Icon
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
