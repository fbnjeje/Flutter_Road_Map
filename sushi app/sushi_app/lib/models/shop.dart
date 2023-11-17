import 'package:flutter/material.dart';
import 'package:sushi_app/models/food.dart';

class Shop {
  final List<Food> foodMenu = [
    Food(
        name: 'Masago',
        price: '21.00',
        imgPath: 'lib/assets/sushi.png',
        rating: '4.4',
        description:
            "Are the edible eggs of the capelin fish (Mallotus villosus), which belong to the smelt family. They're considered a forage fish, meaning they're an important food source for larger predators, such as codfish, seabirds, seals, and whales."),
    Food(
        name: 'Tuna',
        price: '15.00',
        imgPath: 'lib/assets/uramaki.png',
        rating: '4.9',
        description:
            ' Tunas are elongated, robust, and streamlined fishes; they have a rounded body that tapers to a slender tail base and a forked or crescent-shaped tail. In colour, tunas are generally dark above and silvery below, often with an iridescent shine.'),
  ];
}
