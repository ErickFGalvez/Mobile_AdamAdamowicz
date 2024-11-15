import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(AdamAdamowiczApp());
}

class AdamAdamowiczApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adam Adamowicz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Adam Adamowicz',
          style: TextStyle(color: Colors.purple[100]),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.purple[100],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CompanyScreen()),
                  );
                },
                child: Text('Empresa'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GamesScreen()),
                  );
                },
                child: Text('Jogos Produzidos'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutScreen()),
                  );
                },
                child: Text('Sobre Adam Adamowicz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyScreen extends StatelessWidget {
  final Uri _companyUrl = Uri.parse('https://www.bethesda.net/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_companyUrl)) {
      throw 'Could not launch $_companyUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.purple[100],
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Bethesda_Game_Studios_logo.svg/1200px-Bethesda_Game_Studios_logo.svg.png',
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Bethesda Softworks é uma das principais desenvolvedoras e publicadoras de jogos do mundo, conhecida por sua contribuição para a indústria de jogos eletrônicos desde sua fundação em 1986. A empresa tem um histórico de inovações tecnológicas e narrativas, sendo pioneira na criação de jogos que moldaram a indústria moderna.'
              '\n\nA Bethesda é amplamente reconhecida por franquias de sucesso, como Fallout e The Elder Scrolls, ambas aclamadas por suas vastas histórias, mundos abertos expansivos e jogabilidade envolvente. Fallout 3 e The Elder Scrolls V: Skyrim, especialmente, elevaram o padrão de RPGs no cenário global.'
              '\n\nAo longo dos anos, a empresa continuou a crescer, adquirindo estúdios renomados e expandindo seu portfólio de jogos. Com uma cultura que valoriza a criatividade e inovação, Bethesda Softworks mantém-se como uma das líderes no desenvolvimento de jogos AAA, sempre focada em oferecer experiências imersivas e memoráveis aos jogadores.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _launchUrl,
                child: Text('Visite o site da empresa'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Jogos Produzidos',
          style: TextStyle(color: Colors.purple[100]),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.purple[100],
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Fallout 3
            Container(
              color: Colors.white.withOpacity(0.8),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Fallout 3',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://live.staticflickr.com/7206/6877198109_37238925ee.jpg',
                    height: 200,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Adam Adamowicz contribuiu extensivamente para a criação dos conceitos visuais de Fallout 3, ajudando a dar vida ao mundo pós-apocalíptico com uma estética única e detalhada.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Skyrim
            Container(
              color: Colors.white.withOpacity(0.8),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'The Elder Scrolls V: Skyrim',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.network(
                    'https://cdn.escapistmagazine.com/media/global/images/library/deriv/646/646153.jpg',
                    height: 200,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Em Skyrim, Adam foi essencial no desenvolvimento do visual das regiões, criaturas e ambientação, incluindo conceitos de arquitetura medieval e criaturas fantásticas.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Outros projetos
            Text(
              'Outros Projetos Icônicos',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Além de Fallout 3 e Skyrim, Adam colaborou em diversos projetos da Bethesda, sempre trazendo uma visão criativa e detalhada que marcou o estilo visual da empresa.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.purple[100],
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Adam Adamowicz foi um renomado artista e designer conceitual, conhecido por seu trabalho em alguns dos maiores jogos da indústria de videogames, especialmente na Bethesda Softworks.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/a/aa/Adam_Adamowicz_at_the_2012_PAX.jpg',
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  'História de Adam Adamowicz:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                Text(
                  'Adam Adamowicz nasceu em 1974 e se destacou como um dos principais artistas conceituais na indústria de jogos. Ele trabalhou como designer de ambientes e de personagens, criando visuais que se tornaram fundamentais para a identidade de jogos como "Fallout 3" e "The Elder Scrolls V: Skyrim".'
                  '\n\nAo longo de sua carreira, Adam foi responsável por algumas das representações mais icônicas de mundos pós-apocalípticos e fantasias medievais, sendo altamente respeitado por sua habilidade de mesclar narrativa visual com jogabilidade imersiva. Seu trabalho com a Bethesda foi crucial para a definição dos universos de "Fallout" e "Skyrim".'
                  '\n\nAlém de seu trabalho na Bethesda, Adam também teve um impacto significativo em outros projetos, e sua abordagem única à criação de mundos gerou uma enorme influência sobre o design de jogos modernos. Ele foi descrito como um visionário no campo da arte de games, com um estilo caracterizado por detalhes meticulosos e uma enorme riqueza de atmosferas nos mundos que ajudou a construir.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                Text(
                  'Dados Importantes sobre Adam Adamowicz:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                Text(
                  '• Nome: Adam Adamowicz\n'
                  '• Nascimento: 1974\n'
                  '• Nacionalidade: Americana\n'
                  '• Principais Contribuições: "Fallout 3", "Skyrim", "Fallout 4", "The Elder Scrolls Online"\n'
                  '• Estilo: Detalhado, atmosférico, influenciado por mundos pós-apocalípticos e fantasias medievais\n'
                  '• Títulos mais notáveis: "Fallout 3", "The Elder Scrolls V: Skyrim", "Fallout 4", "The Elder Scrolls Online"',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                Text(
                  'Infelizmente, Adam Adamowicz faleceu em 2012, mas seu legado como um dos maiores artistas conceituais da indústria de games continua vivo até hoje. Seu trabalho foi um elemento essencial para a criação de mundos inesquecíveis que continuam a influenciar o design de jogos até o presente momento.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
