import 'package:quizz_app/Data/question.dart';

List<question> getQuestionList() {
  var firstQuestion = question();
  firstQuestion.qTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  firstQuestion.imageNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین',
  ];

  var secondQuestion = question();
  secondQuestion.qTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = [
    '(شوروی سابق)روسیه',
    'آمریکا',
    'چین',
    'هند',
  ];

  return [firstQuestion, secondQuestion];
}
