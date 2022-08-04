import 'package:flutter/material.dart';
import 'constants.dart';

class iconCard extends StatelessWidget {
  iconCard({required this.iconName, required this.text});
  final IconData iconName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(
          iconName,
          size: 80.0,
          color: Colors.teal,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kWordStyle
        ),
      ],
    );
  }
}