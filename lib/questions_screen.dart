import 'package:basic_quiz_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:basic_quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var questionIndex = 0;

  void onClick() {
    if (questionIndex + 1 < questions.length) {
      setState(() {
        questionIndex += 1;
      });
    } else {
      setState(() {
        questionIndex = 0;
      });
    }
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AnswerButton(answer, onClick),
                    const SizedBox(height: 15),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
