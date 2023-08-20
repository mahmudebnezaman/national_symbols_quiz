import 'package:flutter/material.dart';
import 'package:quiz_app/const/strings.dart';
import 'package:quiz_app/view/widgets/answer_button.dart';
import 'package:quiz_app/view/widgets/question_text.dart';

Widget quizScreen({required int qIndex, required Function answeredQuestion}) {
  return Column(
    children: [
      QText(question: questions![qIndex]['question'].toString()),
      ...(questions![qIndex]['answer'] as List<Map<String, Object>>)
          .asMap()
          .entries
          .map((entry) {
        final answerIndex = entry.key;
        final answer = entry.value;
        return AnswerButton(
          answeredQuestion: ()=> answeredQuestion(answer['score']),
          img: answer['image'].toString(),
          answerIndex: answerIndex, // Pass the answer index
        );
      }).toList(),
    ],
  );
}
