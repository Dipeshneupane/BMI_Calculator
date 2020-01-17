import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reuseable_card.dart';
import 'reuseable_column.dart';

const bottomContainerHeight = 80.0;

const ActiveCardColour = Color(0xFF1D1E33);

const InactiveCardColour = Color(0xFF111328);

const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = InactiveCardColour;
  Color femaleColor = InactiveCardColour;

  void updateColour(int gender) {
    if (gender == 1) {
      if (maleColor == InactiveCardColour) {
        maleColor = ActiveCardColour;
        femaleColor = InactiveCardColour;
      } else {
        maleColor = InactiveCardColour;
      }
    }
    if (gender == 2) {
      if (femaleColor == InactiveCardColour) {
        femaleColor = ActiveCardColour;
        maleColor = InactiveCardColour;
      } else
        femaleColor = InactiveCardColour;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: Reuseable_Container(
                      colour: maleColor,
                      cardChild: Reuseable_Column(
                          icon: FontAwesomeIcons.mars, label: "Male"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: Reuseable_Container(
                      colour: femaleColor,
                      cardChild: Reuseable_Column(
                        icon: FontAwesomeIcons.venus,
                        label: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reuseable_Container(
              colour: ActiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable_Container(
                    colour: ActiveCardColour,
                  ),
                ),
                Expanded(
                    child: Reuseable_Container(
                  colour: ActiveCardColour,
                )),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
