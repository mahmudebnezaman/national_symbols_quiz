import 'package:flutter/material.dart';
import 'package:quiz_app/const/images.dart';
import 'package:quiz_app/const/strings.dart';
import 'package:quiz_app/view/quizapp.dart';
import 'package:quiz_app/view/widgets/hint.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        child: ListView(
          children: [
            hint(),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const QuizApp(),
            ),
          );
        },
        label: Row(
          children: [
            Image.asset(
              imgBrain,
              height: 35,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              appBarTitle2,
              style: const TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
