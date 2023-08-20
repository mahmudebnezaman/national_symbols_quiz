import 'package:flutter/material.dart';

import 'package:quiz_app/const/strings.dart';
import 'package:quiz_app/view/widgets/answer_button.dart';

import 'package:quiz_app/view/widgets/question_text.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var qIndex = 0;
  var aIndex = 0;

  void answeredQuestion() {
    setState(() {
      qIndex++;
    });
    if (qIndex > 2) {
      qIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appBarTitle,
            style: const TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            QText(question: questions[qIndex]['question'].toString()),

            ...(questions[qIndex]['answer'] as List<String>).map((answer){
              return AnswerButton(answeredQuestion: answeredQuestion, img: answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
