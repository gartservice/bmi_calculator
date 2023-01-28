import 'package:flutter/material.dart';
const bottomButtonHeight = 80.0;
const colorForCards = Color(0xFF1D1E33);
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
      body: Column(        
        children: [
          Expanded(
            child: Row(             
              children: [
                Expanded(
                  child: ReusableCard(colour: colorForCards),
                ),
                Expanded(
                  child: ReusableCard(colour: colorForCards),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: colorForCards),
                ),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: colorForCards),
                ),
                Expanded(
                  child: ReusableCard(colour: colorForCards),
                ),
              ],
            ),
          ),
          Container(
            height: bottomButtonHeight,
            color: Colors.red,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),

          )
        ],
      ),


    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}