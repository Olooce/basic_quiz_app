import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummary() {}

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
