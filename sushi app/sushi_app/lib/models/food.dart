import 'package:flutter/material.dart';

class Food {
  String name;
  String price;
  String imgPath;
  String rating;

  Food(
      {required this.name,
      required this.price,
      required this.imgPath,
      required this.rating});

  String get _name => name;
  String get _price => _price;
  String get _imgPath => imgPath;
  String get _rating => rating;
}
