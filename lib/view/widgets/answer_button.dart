import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback answeredQuestion;
  final String img;
  final int answerIndex;
  const AnswerButton(
      {super.key,
      required this.answeredQuestion,
      required this.answerIndex,
      required this.img});

  @override
  Widget build(BuildContext context) {

    String? index;

    if (answerIndex == 0){
      index = 'ক.';
    }else if (answerIndex == 1){
      index = 'খ.';
    }else if (answerIndex == 2){
      index = 'গ.';
    }else if (answerIndex == 3){
      index = 'ঘ.';
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answeredQuestion,
        style: ElevatedButton.styleFrom(
          elevation: 10,
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              index!,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              img,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
