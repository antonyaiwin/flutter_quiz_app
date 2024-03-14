import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/controller/quiz_screen_controller.dart';
import 'package:flutter_quiz_app/view/results_screen/results_screen.dart';

import '../../common/widgets/custom_button.dart';
import 'widgets/options_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;

  int marks = 0;
  int? selectedAnswerIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(
            '${currentQuestionIndex + 1}/${QuizScreenController.flutterDartQuestions.length}',
            style: const TextStyle(color: Colors.blue),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                QuizScreenController
                    .flutterDartQuestions[currentQuestionIndex].question,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 40),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => OptionsCard(
                isSelected: selectedAnswerIndex == index,
                borderColor: buildColor(index),
                onTap: selectedAnswerIndex != null
                    ? null
                    : () {
                        setState(() {
                          selectedAnswerIndex = index;
                          if (selectedAnswerIndex ==
                              QuizScreenController
                                  .flutterDartQuestions[currentQuestionIndex]
                                  .correctAnswerIndex) {
                            marks++;
                          }
                        });
                      },
                optionLabel: QuizScreenController
                    .flutterDartQuestions[currentQuestionIndex].options[index],
                icon: buildIcon(index),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: QuizScreenController
                  .flutterDartQuestions[currentQuestionIndex].options.length,
            ),
            const SizedBox(height: 30),
            CustomButton(
              onTap: selectedAnswerIndex == null
                  ? null
                  : () {
                      if (currentQuestionIndex <
                          QuizScreenController.flutterDartQuestions.length -
                              1) {
                        setState(() {
                          selectedAnswerIndex = null;
                          currentQuestionIndex++;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultsScreen(
                              correctAnswerCount: marks,
                              totalQuestionCount: QuizScreenController
                                  .flutterDartQuestions.length,
                            ),
                          ),
                        );
                      }
                    },
            ),
          ],
        ),
      ),
    );
  }

  Color buildColor(int index) {
    if ((selectedAnswerIndex != null &&
        index ==
            QuizScreenController.flutterDartQuestions[currentQuestionIndex]
                .correctAnswerIndex)) {
      return Colors.green;
    } else if (selectedAnswerIndex != index) {
      return Colors.white70;
    } else {
      return Colors.red;
    }

    // if (selectedAnswerIndex == index) {
    //   if (selectedAnswerIndex ==
    //       HomeScreenController
    //           .flutterDartQuestions[currentQuestionIndex].correctAnswerIndex) {
    //     return Colors.green;
    //   } else {
    //     return Colors.red;
    //   }
    // } else {
    //   if (selectedAnswerIndex != null &&
    //       HomeScreenController.flutterDartQuestions[currentQuestionIndex]
    //               .correctAnswerIndex ==
    //           index) {
    //     return Colors.green;
    //   } else {
    //     return Colors.white70;
    //   }
    // }
  }

  IconData? buildIcon(int index) {
    if ((selectedAnswerIndex != null &&
        index ==
            QuizScreenController.flutterDartQuestions[currentQuestionIndex]
                .correctAnswerIndex)) {
      return Icons.done_rounded;
    } else if (selectedAnswerIndex == index) {
      return Icons.close_rounded;
    }
    return null;
  }
}
