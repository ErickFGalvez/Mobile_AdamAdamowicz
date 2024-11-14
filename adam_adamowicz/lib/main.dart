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
          style: TextStyle(color: Colors.purple[100]), // Letra roxa clara
        ),
        iconTheme: IconThemeData(color: Colors.white), // Cor da seta para branco
      ),
      body: Container(
        color: Colors.purple[100], // Fundo roxo claro
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
  final Uri _companyUrl = Uri.parse('https://www.bethesda.net/'); // URL da empresa

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
        iconTheme: IconThemeData(color: Colors.white), // Cor da seta para branco
      ),
      body: Container(
        color: Colors.purple[100], // Fundo roxo claro
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Bethesda_Game_Studios_logo.svg/1200px-Bethesda_Game_Studios_logo.svg.png',
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Bethesda Softworks é uma das principais desenvolvedoras e publicadoras de jogos do mundo, conhecida por sua contribuição para a indústria de jogos eletrônicos desde sua fundação em 1986. A empresa tem um histórico de inovações tecnológicas e narrativas, sendo pioneira na criação de jogos que moldaram a indústria moderna.'
              '\n\nA Bethesda é amplamente reconhecida por franquias de sucesso, como Fallout e The Elder Scrolls, ambas aclamadas por suas vastas histórias, mundos abertos expansivos e jogabilidade envolvente. Fallout 3 e The Elder Scrolls V: Skyrim, especialmente, elevaram o padrão de RPGs no cenário global.'
              '\n\nAo longo dos anos, a empresa continuou a crescer, adquirindo estúdios renomados e expandindo seu portfólio de jogos. Com uma cultura que valoriza a criatividade e inovação, Bethesda Softworks mantém-se como uma das líderes no desenvolvimento de jogos AAA, sempre focada em oferecer experiências imersivas e memoráveis aos jogadores.',
              style: TextStyle(fontSize: 14), // Tamanho da fonte menor
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
          style: TextStyle(color: Colors.purple[100]), // Letra roxa clara
        ),
        iconTheme: IconThemeData(color: Colors.white), // Cor da seta para branco
      ),
      body: Container(
        color: Colors.purple[100], // Fundo roxo claro
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Alguns dos jogos em que Adam Adamowicz trabalhou:',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                '- Fallout 3\n- The Elder Scrolls V: Skyrim\n- Outros projetos icônicos da Bethesda',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
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
        title: Text(
          'Sobre Adam Adamowicz',
          style: TextStyle(color: Colors.purple[100]), // Letra roxa clara
        ),
        iconTheme: IconThemeData(color: Colors.white), // Cor da seta para branco
      ),
      body: Container(
        color: Colors.purple[100], // Fundo roxo claro
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Adam Adamowicz foi um designer e artista conceitual conhecido por seu trabalho na Bethesda Softworks. '
              'Ele foi fundamental na criação de conceitos visuais para jogos como Fallout 3 e The Elder Scrolls V: Skyrim.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
