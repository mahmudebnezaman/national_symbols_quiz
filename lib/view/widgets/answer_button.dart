import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback answeredQuestion;
  final String img;
  const AnswerButton(
      {super.key,
      required this.answeredQuestion,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answeredQuestion,
        style: ElevatedButton.styleFrom(
            elevation: 10,
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),),
        child: Image.asset(
          img,
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
