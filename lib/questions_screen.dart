import 'package:basic_quiz_app/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  void onClick() {}
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Question",
              style: TextStyle(
                color: Colors.white,
              )),
          const SizedBox(height: 10),
          AnswerButton("Answer 1", onClick),
          AnswerButton("Answer 2", onClick),
          AnswerButton("Answer 3", onClick),
          AnswerButton("Answer 4", onClick),
        ],
      ),
    );
  }
}
