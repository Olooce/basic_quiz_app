import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerString, this.onClick, {super.key});

  final String answerString;
  final void Function() onClick;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 4, 94),
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
        ),
      ),
      child: Text(answerString),
    );
  }
}
