class Food {
  String name;
  String price;
  String imgPath;
  String rating;
  String description;

  Food(
      {required this.name,
      required this.price,
      required this.imgPath,
      required this.rating,
      required this.description});

  String get _name => name;
  String get _price => price;
  String get _imgPath => imgPath;
  String get _rating => rating;
  String get _description => description;
}
