import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF0A0D22),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.purple,
          primary: Color(0XFF0A0D22),
        ),
      ),
      home: InputPage(),
    );
  }
}
