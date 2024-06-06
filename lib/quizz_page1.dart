import 'package:flutter/material.dart';
import 'package:quizz_app/Data/question.dart';
import 'constants/constants.dart';

class QuizzPage1 extends StatefulWidget {
  const QuizzPage1({super.key});

  @override
  State<QuizzPage1> createState() => _QuizzPage1State();
}

class _QuizzPage1State extends State<QuizzPage1> {
  int shownQuestionIndex = 0;
  question? selectedQuestion;
  bool isFinalAnswerSumbited = false;
  int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    String questionImageIndex =
        getQuestionList()[shownQuestionIndex].imageNumber!;
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/$questionImageIndex.png'),
            ),
            Text(
              'مشهورترین شعبده باز دنیا کیست؟',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            ...List.generate(4, (index) => getOptionsItem(index)),
          ],
        ),
      ),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: Text(
        getQuestionList()[shownQuestionIndex].answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        setState(() {
          shownQuestionIndex++;
        });
      },
    );
  }
}
