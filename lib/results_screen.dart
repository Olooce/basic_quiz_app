import 'package:flutter/material.dart';
import 'package:basic_quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(150),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("You have answered 38756293756"),
          const SizedBox(height: 25),
          const Text("You have answered 38756293756"),
          const SizedBox(height: 25),
          TextButton(
            onPressed: () {},
            child: const Text("Restart Quiz!"),
          ),
        ]),
      ),
    );
  }
}
