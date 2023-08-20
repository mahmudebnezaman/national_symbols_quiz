import 'package:flutter/material.dart';
import 'package:quiz_app/const/images.dart';
import 'package:quiz_app/const/strings.dart';
import 'package:quiz_app/view/widgets/question_text.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int mark;
  const ResultScreen({super.key, required this.resetQuiz, required this.mark});

  String get resultPhrase {
    String resultText;
    if (mark == 3) {
      resultText = endQuiz1;
    } else {
      resultText = endQuiz2;
    }
    return resultText;
  }

  String get markPhrase {
    String resultText;
    if (mark == 3) {
      resultText = mark3;
    } else if (mark == 2) {
      resultText = mark2;
    } else if (mark == 1) {
      resultText = mark1;
    } else {
      resultText = mark0;
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imgClap,
          height: 80,
        ),
        const SizedBox(
          height: 8,
        ),
        QText(question: resultPhrase),
        const SizedBox(
          height: 8,
        ),
        Text(
          markPhrase,
          style: const TextStyle(
            color: Color.fromARGB(255, 49, 119, 51),
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        ElevatedButton.icon(
          onPressed: resetQuiz,
          icon: const Icon(Icons.refresh_rounded, size: 30),
          label: const Text(
            'আবার চেষ্টা করো',
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 10,
          ),
        ),
      ],
    );
  }
}
