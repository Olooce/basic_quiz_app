import 'package:basic_quiz_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:basic_quiz_app/data/questions.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onClick});

  final void Function(String answer) onClick;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  final List<String> selectedAnswers = [];
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

  void storeAnswer(String answer) {
    selectedAnswers.add(answer);
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
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
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
