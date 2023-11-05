import 'package:flutter/material.dart';
import 'package:sushi_app/components/button.dart';

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
        Row(
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
        )
        //search bar

        //menu list

        //popular food
      ]),
    );
  }
}
