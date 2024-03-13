import 'package:flutter_quiz_app/model/question_model.dart';

abstract class DummyDb {
  static const List<Map<String, dynamic>> _dartQuiz = [
    {
      'question': 'What is Dart?',
      'options': [
        'A programming language',
        'A type of arrow',
        'A bird species'
      ],
      'correct_answer_index': 0,
    },
    {
      'question': 'Is Dart statically or dynamically typed?',
      'options': ['Statically typed', 'Dynamically typed'],
      'correct_answer_index': 0,
    },
    {
      'question': 'What is the main use of Dart?',
      'options': [
        'Building mobile applications',
        'Creating server-side applications',
        'Developing web applications',
        'All of the above'
      ],
      'correct_answer_index': 3,
    },
    {
      'question': 'What is Flutter?',
      'options': [
        'A bird species',
        'A UI toolkit and framework',
        'A programming language',
      ],
      'correct_answer_index': 1,
    },
    {
      'question': 'How do you comment out code in Dart?',
      'options': ['// for single-line', '/* */ for multi-line'],
      'correct_answer_index': 0,
    },
    {
      'question': 'What is the entry point of a Dart program?',
      'options': ['main()', 'start()', 'run()'],
      'correct_answer_index': 0,
    },
    {
      'question': 'Does Dart support object-oriented programming?',
      'options': ['Yes', 'No'],
      'correct_answer_index': 0,
    },
    {
      'question': 'How do you declare a variable in Dart?',
      'options': [
        'var variableName = value',
        'variableType variableName = value',
        'let variableName = value'
      ],
      'correct_answer_index': 0,
    },
    {
      'question': 'What is the difference between final and const in Dart?',
      'options': [
        'final is evaluated at runtime, const is evaluated at compile-time',
        'const is evaluated at runtime, final is evaluated at compile-time',
        'final can be reassigned, const cannot be reassigned'
      ],
      'correct_answer_index': 2,
    },
    {
      'question': 'How do you perform asynchronous operations in Dart?',
      'options': [
        'Using async/await keywords',
        'Using sync/wait keywords',
        'There is no support for asynchronous operations in Dart'
      ],
      'correct_answer_index': 0,
    },
  ];
  // static List<QuestionModel> quizList =
  // _dartQuiz.map((e) => QuestionModel.fromJson(e)).toList();
}
