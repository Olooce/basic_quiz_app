import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset('assets/images/quiz-logo.png'),
          Positioned(
            bottom: 50,
            child: Column(
              children: [
                const Text(
                  "Learn Flutter the fun way!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  child: const Text("Start Quiz"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
