import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summary});
  final List<Map<String, Object>> summary;
  @override
  Widget build(context) {
    return Column(
      children: summary.map((data) {
        return Row(children: [
          Text(((data['question_index'] as int) + 1).toString()),
        ]);
      }).toList(),
    );
  }
}
