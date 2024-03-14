import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key,
      required this.correctAnswerCount,
      required this.totalQuestionCount});

  final int correctAnswerCount;
  final int totalQuestionCount;

  @override
  Widget build(BuildContext context) {
    final marksPercentage = correctAnswerCount / totalQuestionCount * 100;
    return Scaffold(
      body: Center(
        child: Text(
          'Your score is ${marksPercentage.round()}%',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
