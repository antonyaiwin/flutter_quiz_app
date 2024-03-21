import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/core/constants/color_constants.dart';

import 'view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorConstants.primaryAmber,
          brightness: Brightness.dark,
        ),
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}
