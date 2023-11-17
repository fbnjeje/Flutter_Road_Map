import 'package:flutter/material.dart';
import 'package:sushi_app/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
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

  //customer cart

  List<Food> _cart = [];

  //getter methods

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove from cart

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
