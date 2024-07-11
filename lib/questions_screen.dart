import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
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
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer3'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer4'),
          ),
        ],
      ),
    );
  }
}
