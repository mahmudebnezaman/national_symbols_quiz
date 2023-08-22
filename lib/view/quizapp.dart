import 'package:flutter/material.dart';

import 'package:quiz_app/const/strings.dart';
import 'package:quiz_app/view/quiz_screen.dart';
import 'package:quiz_app/view/result_screen.dart';
import 'package:quiz_app/view/widgets/hint.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var qIndex = 0;
  var aIndex = 0;
  var score = 0;

  void answeredQuestion(int mark) {
    score += mark;
    setState(() {
      qIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      qIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog( //show confirm dialogue 
        //the return value will be from "Yes" or "No" options
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('কুইজ বন্ধ?'),
          content: const Text('কুইজ এর ফলাফল মুছে ফেলা হবে!'),
          actions:[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
               //return false when click on "NO"
              child:const Text('না'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true), 
              //return true when click on "Yes"
              child:const Text('হ্যাঁ'),
            ),

          ],
        ),
      )??false; //if showDialouge had returned null, then return false
    }
    return WillPopScope(
      onWillPop: () async {
        // Show a dialog and ask the user if they want to exit
        return showExitPopup();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(appBarTitle2,
              style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: qIndex < questions!.length
              ? quizScreen(qIndex: qIndex, answeredQuestion: answeredQuestion)
              : ResultScreen(resetQuiz: resetQuiz, mark: score),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      title: Text(
                        '$appBarTitle:',
                        style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      content: hint());
                });
          },
          elevation: 5,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100.0),
            ),
          ),
          child: const Icon(Icons.lightbulb),
        ),
      ),
    );
  }
}
