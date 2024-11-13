import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:adam_adamowicz/main.dart';

void main() {
  testWidgets('Testa navegação entre as telas e presença dos textos principais', (WidgetTester tester) async {
    // Inicializa o aplicativo
    await tester.pumpWidget(AdamAdamowiczApp());

    // Verifica se estamos na tela inicial e se os botões principais existem
    expect(find.text('Adam Adamowicz'), findsOneWidget);
    expect(find.text('Empresa'), findsOneWidget);
    expect(find.text('Jogos Produzidos'), findsOneWidget);
    expect(find.text('Sobre Adam Adamowicz'), findsOneWidget);

    // Testa navegação para a tela da Empresa
    await tester.tap(find.text('Empresa'));
    await tester.pumpAndSettle();

    // Verifica se a tela da Empresa contém o texto correto
    expect(find.text('Empresa'), findsOneWidget);
    expect(find.text('Adam Adamowicz trabalhou na Bethesda Softworks, uma das principais desenvolvedoras de jogos.'), findsOneWidget);

    // Volta para a tela inicial
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    // Testa navegação para a tela de Jogos Produzidos
    await tester.tap(find.text('Jogos Produzidos'));
    await tester.pumpAndSettle();

    // Verifica se a tela de Jogos Produzidos contém o texto correto
    expect(find.text('Jogos Produzidos'), findsOneWidget);
    expect(find.text('Alguns dos jogos em que Adam Adamowicz trabalhou:'), findsOneWidget);
    expect(find.text('- Fallout 3\n- The Elder Scrolls V: Skyrim\n- Outros projetos icônicos da Bethesda'), findsOneWidget);

    // Volta para a tela inicial
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    // Testa navegação para a tela Sobre Adam Adamowicz
    await tester.tap(find.text('Sobre Adam Adamowicz'));
    await tester.pumpAndSettle();

    // Verifica se a tela Sobre Adam Adamowicz contém o texto correto
    expect(find.text('Sobre Adam Adamowicz'), findsOneWidget);
    expect(find.text('Adam Adamowicz foi um designer e artista conceitual conhecido por seu trabalho na Bethesda Softworks. '
                    'Ele foi fundamental na criação de conceitos visuais para jogos como Fallout 3 e The Elder Scrolls V: Skyrim.'),
            findsOneWidget);
  });
}
