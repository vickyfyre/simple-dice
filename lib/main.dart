import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal.shade400,
      appBar: AppBar(
        title: const Text(
          'Dice',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Poppins',
            letterSpacing: 1.0,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: const Dicepage(),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int diceNumber = 1;
  void changeDiceFace() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$diceNumber.png'),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: (() {
              setState(() {
                diceNumber = 1;
              });
            }),
            child: const Icon(
              Icons.restart_alt_rounded,
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
