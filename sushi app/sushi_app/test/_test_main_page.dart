import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sushi_app/main.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/screens/food_details_page.dart';

import 'package:sushi_app/screens/food_details_page.dart';

void main() {
  testWidgets('test opening first page', (WidgetTester tester) async {
    //read the shop
    await tester.pumpWidget(const MyApp());

    //test Suma

//verifica que el contador de comida empieze en 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

//cuando clickee
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

//Verifica que el contador haya incrementado

    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });
}
