import 'package:flutter/material.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  State<AnimationsPage> createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  bool tapped = false;
  double size = 150;
  double fontSize = 20;
  final duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedOpacity(
              opacity: tapped ? 1 : 0,
              duration: duration,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.greenAccent.shade200,
              ),
            ),
            TextButton(
              onPressed: () => setState(() => tapped = !tapped),
              child: Text(
                tapped ? 'Hide Background' : 'Show Background',
                style: tapped ? const TextStyle(color: Colors.black) : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
