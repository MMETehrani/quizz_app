import 'package:flutter/material.dart';

class QuizzPage1 extends StatelessWidget {
  const QuizzPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber[300],
        title: Text(
          'کوییز',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Text(''),
    );
  }
}
