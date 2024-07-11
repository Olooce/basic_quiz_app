import 'package:flutter/material.dart';
import 'package:basic_quiz_app/quiz_app.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const QuizApp(),
        ),
      ),
    ),
  );
}
