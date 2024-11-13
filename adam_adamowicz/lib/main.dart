import 'package:flutter/material.dart';

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
        title: Text('Adam Adamowicz'),
      ),
      body: Center(
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
    );
  }
}

class CompanyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa'),
      ),
      body: Center(
        child: Text(
          'Adam Adamowicz trabalhou na Bethesda Softworks, uma das principais desenvolvedoras de jogos.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
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
        title: Text('Jogos Produzidos'),
      ),
      body: Center(
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
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre Adam Adamowicz'),
      ),
      body: Center(
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
    );
  }
}
