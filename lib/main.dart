import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              fontFamily: 'Nova Oval',
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int magicNumber = 1;

  void changeBall() {
    setState(() {
      magicNumber = Random().nextInt(5) + 1;
      print('i got pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeBall();
        },
        child: Image.asset('images/ball$magicNumber.png'),
      ),
    );
  }
}
