import '../model/question_model.dart';

class HomeScreenController {
  static const List<QuestionModel> flutterDartQuestions = [
    QuestionModel(
      question: 'What is Flutter?',
      options: [
        'A programming language',
        'A UI toolkit/framework',
        'A database management system',
        'A cloud computing service'
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          'Which programming language is used for Flutter app development?',
      options: ['Java', 'Dart', 'Python', 'Swift'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What is the entry point of a Flutter app?',
      options: ['main()', 'start()', 'run()'],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the main advantage of Flutter?',
      options: [
        'Native performance',
        'Platform-specific code',
        'Limited customization options',
        'Requires separate development for each platform'
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which IDE is commonly used for Flutter development?',
      options: ['Eclipse', 'Visual Studio Code', 'NetBeans', 'Xcode'],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: 'What does the "hot reload" feature in Flutter do?',
      options: [
        'Restart the app completely',
        'Compile the app from scratch',
        'Reloads the app without losing its current state',
        'Updates the app\'s UI only'
      ],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question:
          'Which widget is used for building the main structure of a Flutter app?',
      options: ['Container', 'Column', 'Row', 'Scaffold'],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question:
          'What is the purpose of the initState() method in a Flutter StatefulWidget?',
      options: [
        'To initialize the state of the widget',
        'To build the UI of the widget',
        'To update the UI of the widget',
        'To dispose of resources used by the widget'
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'What is the purpose of the setState() method in Flutter?',
      options: [
        'To update the UI of the widget',
        'To initialize the state of the widget',
        'To dispose of resources used by the widget',
        'To build the UI of the widget'
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: 'Which package is commonly used for HTTP requests in Flutter?',
      options: ['http', 'dart:io', 'network', 'flutter_http'],
      correctAnswerIndex: 0,
    ),
  ];
}
