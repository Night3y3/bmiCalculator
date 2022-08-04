import 'package:flutter/material.dart';
import 'firstScreen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF616161),
        ),

      ),
      home: InputPage(),
    );
  }
}