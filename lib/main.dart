import 'package:flutter/material.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/view/auth_view/choice_screen.dart';
import 'package:tailor_book/view/auth_view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor2),
        useMaterial3: true,
      ),
      home: const ChoiceScreen(),
    );
  }
}

