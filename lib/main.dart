import 'package:flutter/material.dart';
import 'package:my_portfolio/portfolio_page.dart';
import 'package:my_portfolio/color_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primaryColor: AppColors.darkBackground,
      ),

      home: const MyHomePage(title: 'My Portfolio'),
    );
  }
}



