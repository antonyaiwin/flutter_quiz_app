import 'package:flutter_quiz_app/model/question_model.dart';

class CategoryModel {
  final String title;
  final String imageUrl;
  final List<QuestionModel> questionsList;

  const CategoryModel({
    required this.title,
    required this.imageUrl,
    required this.questionsList,
  });
}
