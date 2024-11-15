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
                  Image.asset(
                    'fallout3.jpg', // Coloque a imagem de Fallout 3 no diretório raiz do projeto
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
                  Image.asset(
                    'sky.jpg', // Coloque a imagem de Skyrim com o nome correto (sky.jpg)
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
            child: Text(
              'Adam Adamowicz foi um designer e artista conceitual conhecido por seu trabalho na Bethesda Softworks. '
              'Ele foi fundamental na criação de conceitos visuais para jogos como Fallout 3 e The Elder Scrolls V: Skyrim. Seu trabalho é considerado essencial para a criação de mundos imersivos e detalhados nesses jogos. '
              'Adam faleceu em 2012, mas seu legado continua vivo nas produções da Bethesda e na indústria de jogos como um todo.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
