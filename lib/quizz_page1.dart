import 'package:flutter/material.dart';
import 'package:quizz_app/Data/question.dart';
import 'package:quizz_app/screens/result_screen.dart';
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
  int numberPage = getQuestionList().length - 1;
  // int page = shownQuestionIndex + 1;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionList()[shownQuestionIndex];
    String questionImageIndex =
        getQuestionList()[shownQuestionIndex].imageNumber!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber[300],
        title: Text(
          'سوال ${shownQuestionIndex + 1} از ${numberPage + 1}',
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
              selectedQuestion!.qTitle!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            ...List.generate(4, (index) => getOptionsItem(index)),
            if (isFinalAnswerSumbited == true)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  backgroundColor: Colors.teal[900],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultScreen()),
                  );
                },
                child: Text(
                  'مشاهده نتایج کوییز',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          print('correct');
        } else {
          print('wrong');
        }
        if (shownQuestionIndex == getQuestionList().length - 1) {
          isFinalAnswerSumbited = true;
        }
        setState(() {
          if (shownQuestionIndex < getQuestionList().length - 1) {
            shownQuestionIndex++;
          }
        });
      },
    );
  }
}
