import 'package:flutter_quiz_app/model/category_model.dart';

import '../model/question_model.dart';

class QuizController {
  static const List<CategoryModel> quizCategoryList = [
    CategoryModel(
      title: 'Flutter',
      imageUrl:
          'https://nebulae-assets.s3.amazonaws.com/3b56d17152bd46c295797a7eaab1f244.jpg',
      questionsList: flutterDartQuestions,
    ),
    CategoryModel(
      title: 'Sports',
      imageUrl:
          'https://www.bls.gov/spotlight/2017/sports-and-exercise/images/cover_image.jpg',
      questionsList: sportsQuestions,
    ),
    CategoryModel(
      title: 'Chemistry',
      imageUrl:
          'https://www.thoughtco.com/thmb/6MsMmUK27akFhb8i89kj95J5iko=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-545286316-433dd345105e4c6ebe4cdd8d2317fdaa.jpg',
      questionsList: chemistryQuestions,
    ),
    CategoryModel(
      title: 'Maths',
      imageUrl:
          'https://www.euroschoolindia.com/wp-content/uploads/2023/10/what-is-vedic-mathss-for-kids-jpg.webp',
      questionsList: mathQuestions,
    ),
  ];

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

  // Sport Questions
  static const List<QuestionModel> sportsQuestions = [
    QuestionModel(
      question: "Which country won the FIFA World Cup in 2018?",
      options: ["France", "Brazil", "Germany"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Who holds the record for the most Grand Slam tennis titles?",
      options: [
        "Serena Williams",
        "Roger Federer",
        "Rafael Nadal",
        "Novak Djokovic"
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "In which sport is the Ryder Cup contested?",
      options: ["Golf", "Tennis"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Which team has won the most NBA championships?",
      options: ["Los Angeles Lakers", "Chicago Bulls"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Who won the 2019 Formula 1 World Championship?",
      options: ["Lewis Hamilton", "Sebastian Vettel", "Max Verstappen"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "What is the national sport of Japan?",
      options: ["Sumo Wrestling", "Karate", "Judo", "Baseball"],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question:
          "Which country has won the most Olympic gold medals in athletics?",
      options: ["USA", "China", "Jamaica", "Russia", "Kenya"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Who won the FIFA Women's World Cup in 2019?",
      options: ["USA", "Germany", "Sweden"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "In what year did cricket's Indian Premier League (IPL) begin?",
      options: ["2008", "2010", "2012", "2014"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Which city hosted the 2016 Summer Olympics?",
      options: ["Rio de Janeiro", "London", "Beijing", "Tokyo"],
      correctAnswerIndex: 0,
    ),
  ];

  static const List<QuestionModel> chemistryQuestions = [
    QuestionModel(
      question: "What is the chemical symbol for gold?",
      options: ["Au", "Ag", "Fe", "Cu"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "What is the lightest element?",
      options: ["Oxygen", "Hydrogen"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "Which gas is produced during photosynthesis?",
      options: ["Nitrogen", "Oxygen", "Carbon Dioxide"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "What is the pH of pure water at room temperature?",
      options: ["5", "7", "10"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "What is the chemical formula for water?",
      options: ["CO2", "NaCl", "O2", "H2O"],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question: "Which element has the atomic number 6?",
      options: ["Carbon", "Oxygen", "Nitrogen", "Hydrogen"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question:
          "What is the process of converting a solid directly into a gas called?",
      options: ["Evaporation", "Condensation", "Sublimation"],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: "What is the main component of natural gas?",
      options: ["Ethane", "Propane", "Butane", "Methane"],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question: "Which gas makes up the majority of Earth's atmosphere?",
      options: ["Oxygen", "Carbon Dioxide", "Helium", "Nitrogen"],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question: "What is the chemical symbol for sodium?",
      options: ["Mg", "Na", "K", "Ca"],
      correctAnswerIndex: 1,
    ),
  ];

  static const List<QuestionModel> mathQuestions = [
    QuestionModel(
      question: "What is the result of 2 + 2 * 3?",
      options: ["6", "8", "10"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "What is the square root of 25?",
      options: ["5", "10", "15"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "What is the value of pi (π) correct to two decimal places?",
      options: ["3.14", "3.141", "3.142"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "What is the sum of the angles in a triangle?",
      options: ["90 degrees", "180 degrees", "360 degrees"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "What is the value of log₁₀100?",
      options: ["1", "2", "3"],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question:
          "What is the next number in the Fibonacci sequence: 1, 1, 2, 3, 5, ...?",
      options: ["6", "7", "8"],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: "What is the circumference of a circle with diameter 10?",
      options: ["10π", "5π", "20π"],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: "What is the value of 3²?",
      options: ["6", "9", "12"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "What is the sum of the first 10 positive integers?",
      options: ["45", "55", "65"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "What is the result of 10 ÷ 0?",
      options: ["0", "10", "Undefined"],
      correctAnswerIndex: 2,
    ),
  ];
}
