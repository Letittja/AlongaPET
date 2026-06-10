import 'package:flutter_test/flutter_test.dart';
import 'package:alongapet_app/main.dart'; // Importa a nossa main

void main() {
  testWidgets('Smoke test inicial do AlongaPET', (WidgetTester tester) async {
    // Constrói o nosso app com o nome correto
    await tester.pumpWidget(const AlongaPetApp());

    // Como as telas ainda estão vazias, vamos apenas verificar 
    // se o aplicativo principal foi carregado sem dar "crash"
    expect(find.byType(AlongaPetApp), findsOneWidget);
  });
}