import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomButtonHeight = 80.0;
const inactiveCardColor = Color(0xFF111328);
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
enum Gender{
  male,
  female,
  notSelected,
}


class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender=Gender.notSelected;

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
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, text: 'Male'),
                    colour: selectedGender == Gender.male?activeCardColour:inactiveCardColor,

                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                    colour: selectedGender== Gender.female?activeCardColour:inactiveCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, text: 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: (){

                    },
                    colour: activeCardColour,
                    cardChild: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('Male')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: (){

                    },
                    colour: activeCardColour,
                    cardChild: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('Male')
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColour,
                    onPress: (){

                    },
                    cardChild: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('Male')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: bottomButtonHeight,
            color: bottomContainerColour,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}




