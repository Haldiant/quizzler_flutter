import 'package:flutter/material.dart';
import 'package:quizzler_flutter/questions.dart';

void main() {
  runApp(const QuizzlerApp());
}

class QuizzlerApp extends StatelessWidget {
  const QuizzlerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  List<Question> questionsBank = [
    Question(q: 'you can lead a cow downstairs but not upstairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bone are in the feet.', a: true),
    Question(q: 'A Slug\'s blood is green', a: true)
  ];

  int questionsNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questionsBank[questionsNumber].questionsText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  bool correctAnswers =
                      questionsBank[questionsNumber].questionAnswer;

                  if (correctAnswers == true) {
                    print('jawaban benar');
                  } else {
                    print('jawaban salah');
                  }
                  setState(() {
                    questionsNumber++;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                ),
                child: const Text(
                  'Benar',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  bool correctAnswers =
                      questionsBank[questionsNumber].questionAnswer;

                  if (correctAnswers == false) {
                    print('jawaban benar');
                  } else {
                    print('jawaban salah');
                  }

                  setState(() {
                    questionsNumber++;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                ),
                child: const Text(
                  'Salah',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
          Row(children: scoreKeeper)
        ],
      ),
    );
  }
}
