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
            "Esta hueva de pez capelán, de color anaranjado y de tamaño pequeño si las comparamos con las tobiko y las ikura, llaman la atención del paladar por el regusto amargo. Son más económicas que las tobiko y su uso suele estar más extendido en Japón."),
    Food(
        name: 'Tuna',
        price: '15.00',
        imgPath: 'lib/assets/uramaki.png',
        rating: '4.9',
        description:
            'Los atunes son peces alargados, robustos y aerodinámicos, tienen un cuerpo redondeado que se estrecha hasta una base de cola delgada y una cola bifurcada o en forma de media luna. En color, los atunes son generalmente oscuros por arriba y plateados por debajo, a menudo con un brillo iridiscente.'),

    //new
    Food(
        name: 'Nigiri',
        price: '27.00',
        imgPath: 'lib/assets/Salmon.png',
        rating: '4.6',
        description:
            'Después del atún, el de salmón es posiblemente el sushi más popular y conocido dentro y fuera de Japón. Pero lo curioso del asunto es que se trata de una variedad relativamente nueva que no surgió hasta los años 90. '),
    //secondone
    Food(
        name: 'Palmitos',
        price: '9.00',
        imgPath: 'lib/assets/Cal.png',
        rating: '4.2',
        description:
            'Sushi (鮨, 鮓, 寿司 o 壽司) es un plato típico de origen japonés basado en arroz aderezado con vinagre de arroz, azúcar y sal y combinado con otros ingredientes como pescados crudos, mariscos, verduras, etc. Este plato es uno de los más reconocidos de la gastronomía japonesa y uno de los más populares internacionalmente.'),
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
