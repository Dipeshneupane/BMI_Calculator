import 'package:flutter/material.dart';
import 'constants.dart';

class Reuseable_Column extends StatelessWidget {
  final IconData icon;
  final String label;

  Reuseable_Column({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelStyle,
        )
      ],
    );
  }
}
