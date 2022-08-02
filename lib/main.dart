import 'package:flutter/material.dart';
import 'package:flutter_animations/pages/expansion_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animações',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        // brightness: Brightness.dark,
      ),
      home: const ExpansionPage(),
    );
  }
}
