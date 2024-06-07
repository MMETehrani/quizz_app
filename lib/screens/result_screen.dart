import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, this.resultAnswer = 0});
  int resultAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber[300],
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Image(image: AssetImage('images/cup.png')),
          ),
          Text(
            'پاسخ های صحیح',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$resultAnswer',
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )),
    );
  }
}
