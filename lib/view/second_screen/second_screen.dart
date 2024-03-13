import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/controller/home_screen_controller.dart';
import 'package:flutter_quiz_app/core/constants/color_constants.dart';

import 'widgets/options_card.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(
            '${currentQuestionIndex + 1}/${HomeScreenController.flutterDartQuestions.length}',
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
                HomeScreenController
                    .flutterDartQuestions[currentQuestionIndex].question,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 40),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => OptionsCard(
                  isSelected: selectedAnswerIndex == index,
                  borderColor: selectedAnswerIndex == index
                      ? (selectedAnswerIndex ==
                              HomeScreenController
                                  .flutterDartQuestions[currentQuestionIndex]
                                  .correctAnswerIndex)
                          ? Colors.green
                          : Colors.red
                      : selectedAnswerIndex != null &&
                              HomeScreenController
                                      .flutterDartQuestions[
                                          currentQuestionIndex]
                                      .correctAnswerIndex ==
                                  index
                          ? Colors.green
                          : Colors.white70,
                  onTap: selectedAnswerIndex != null
                      ? null
                      : () {
                          setState(() {
                            selectedAnswerIndex = index;
                          });
                        },
                  optionLabel: HomeScreenController
                      .flutterDartQuestions[currentQuestionIndex]
                      .options[index]),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: HomeScreenController
                  .flutterDartQuestions[currentQuestionIndex].options.length,
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                if (currentQuestionIndex <
                    HomeScreenController.flutterDartQuestions.length - 1) {
                  setState(() {
                    selectedAnswerIndex = null;
                    currentQuestionIndex++;
                  });
                }
              },
              borderRadius: BorderRadius.circular(10),
              child: Ink(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: ColorConstants.primaryBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
