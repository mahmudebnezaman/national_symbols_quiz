import 'package:flutter/material.dart';
import 'package:quiz_app/const/strings.dart';
import 'package:quiz_app/view/widgets/question_text.dart';

Widget hint() {
  return SingleChildScrollView(
    child: ListBody(
      children: List.generate(qArray.length, (index) {
        return Column(
          children: [
            QText(question: qArray[index]),
            const SizedBox(
              height: 5,
            ),
            Text(
              answerText,
              style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Image.asset(
              ansArray[index],
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
            const Divider(),
          ],
        );
      }),
    ),
  );
}
