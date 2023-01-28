import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0B0D22),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0B0D22),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // brightness: brightness,
          primary: Color(0xFF0B0D22),
          // onPrimary: onPrimary,
          secondary: Colors.purple,
        ),
        scaffoldBackgroundColor: Color(0xFF0B0D22),
      ),
      home: InputPage(),
    );
  }
}




