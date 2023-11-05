import 'package:flutter/material.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/theme/Colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
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
      body: Column(children: [
        //promo banner
        Container(
          decoration: BoxDecoration(
              color: myPrimaryColor, borderRadius: BorderRadius.circular(29)),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(25),
          child: Row(
            children: [
              //promo message
              Column(
                children: [
                  const Text('Get a 32% Promo'),

                  //reedem button

                  //image

                  MyButton(text: 'Redeem', onTap: () {})
                ],
              )
            ],
          ),
        )
        //search bar

        //menu list

        //popular food
      ]),
    );
  }
}
