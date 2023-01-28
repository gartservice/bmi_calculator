import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B0D22),

        // textTheme: TextTheme(
        //   bodyMedium: TextStyle(color: Colors.white),
        // ),
        // appBarTheme: AppBarTheme(
        //   backgroundColor: Color(0xFF0B0D22),
        // ),
        // colorScheme: ColorScheme.fromSwatch().copyWith(
        //   // brightness: brightness,
        //   primary: Color(0xFF0B0D22),
        //   // onPrimary: onPrimary,
        //   secondary: Colors.purple,
        // ),
        scaffoldBackgroundColor: Color(0xFF0B0D22),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text new'),
      ),
      floatingActionButton: TextButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('press');
        },
      ),
    );
  }
}
