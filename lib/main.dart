import 'package:flutter/material.dart';
import 'package:quizz_app/home_page.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  HomeWidget(),
      
    );
  }
}
