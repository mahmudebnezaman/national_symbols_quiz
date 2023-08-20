import 'package:flutter/material.dart';

class QText extends StatelessWidget {
  final String question;
  const QText({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 25,
          fontStyle: FontStyle.italic
          
      ),
    );
  }
}
