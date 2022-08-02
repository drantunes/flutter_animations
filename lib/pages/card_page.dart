import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  bool opened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.network(
              'https://developers.google.com/static/codelabs/maps-platform/full-stack-store-locator/img/58a6680e9c8e7396.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 350,
              height: opened ? 400 : 250,
              child: Card(
                child: Column(
                  children: [
                    Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-s/1a/2b/ea/41/photo0jpg.jpg',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      height: 170,
                    ),
                    ExpansionTile(
                      onExpansionChanged: (value) => setState(() => opened = value),
                      title: const Text(
                        'Rock Café',
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Row(
                        children: List.generate(
                          5,
                          (_) => const Icon(Icons.star, size: 15, color: Colors.amber),
                        ),
                      ),
                      children: [
                        SizedBox(
                          height: 150,
                          child: ListView(
                            children: const [
                              ListTile(
                                leading: Icon(Icons.map),
                                title: Text('Av. 19 de Setembro, 2000, Centro'),
                              ),
                              ListTile(
                                leading: Icon(Icons.alarm),
                                title: Text(
                                    'Seg - 8AM | 8PM \nTer - 8AM | 8PM \nQua - 8AM | 8PM\nQui - 8AM | 8PM\nSex - Fechado'),
                              ),
                              ListTile(
                                leading: Icon(Icons.phone),
                                title: Text('4004-2310'),
                              ),
                              ListTile(
                                leading: Icon(Icons.web),
                                title: Text('http://cafelegal.com.br'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
