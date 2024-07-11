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
  final currentQuestion = questions[0];
  void onClick() {}
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              )),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            // ...(spreading)
            return AnswerButton(answer, onClick);
          })
        ],
      ),
    );
  }
}
answerString