import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/firebase_options.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/screens/cart_page.dart';
import 'package:sushi_app/screens/clicker.dart';
import 'package:sushi_app/screens/intro_page.dart';
import 'package:sushi_app/screens/menu_page.dart';
import 'package:sushi_app/screens/sign_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (defaultTargetPlatform == TargetPlatform.iOS) {
    await Firebase.initializeApp(
        name: 'sushi', options: DefaultFirebaseOptions.currentPlatform);
  } else {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ) //
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignUpPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
        '/signpage': (context) => const SignUpPage(),
        '/clicker': (context) => const Clicker()
      },
    );
  }
}
