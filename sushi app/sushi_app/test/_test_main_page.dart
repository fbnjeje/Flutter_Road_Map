import 'package:flutter_test/flutter_test.dart';
import 'package:sushi_app/main.dart';

void main() {
  testWidgets('test opening first page', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
  });
}
