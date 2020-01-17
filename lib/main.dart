import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMI_Calculator());

// ignore: camel_case_types
class BMI_Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
