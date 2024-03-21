import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/controller/quiz_controller.dart';
import 'package:flutter_quiz_app/core/constants/color_constants.dart';
import 'package:flutter_quiz_app/core/constants/image_constants.dart';
import 'package:flutter_quiz_app/model/category_model.dart';

import 'widgets/categories_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text('Hi, Aiwin'),
                subtitle: const Text('Let\'s make this day more productive'),
                titleTextStyle: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
                trailing: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(ImageConstants.avatarImageUrl),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: ColorConstants.blackFaded,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Choose a category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text('Let\'s Play'),
              ),
              GridView.builder(
                padding: const EdgeInsets.all(15),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 2.3,
                ),
                itemBuilder: (context, index) {
                  CategoryModel item = QuizController.quizCategoryList[index];
                  return CategoriesCard(item: item);
                },
                itemCount: QuizController.quizCategoryList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
