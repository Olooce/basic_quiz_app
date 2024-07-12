import 'package:basic_quiz_app/questions_summary.dart';
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
    final summaryData = getSummary();
    final numQuestions = questions.length;
    final numCorrect = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(left: 100, right: 100),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
              "You have answered $numCorrect out of $numQuestions  questions correctly!,"),
          const SizedBox(height: 15),
          QuestionsSummary(summary: summaryData),
          const SizedBox(height: 15),
          TextButton(
            onPressed: () {},
            child: const Text("Restart Quiz!"),
          ),
        ]),
      ),
    );
  }
}
