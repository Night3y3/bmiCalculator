import 'package:flutter/material.dart';

class Reused extends StatelessWidget {
  Reused({required this.colour,required this.cardChild,this.height = 230.0,this.width = 180.0});

  final Widget cardChild;
  final Color colour;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(22.0),
      ),
      height: height,
      width: width,
    );
  }
}