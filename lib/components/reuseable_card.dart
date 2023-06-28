import 'package:flutter/material.dart';

class reuseablecard extends StatelessWidget {
  reuseablecard(
      {super.key, required this.colour, this.cardChild, this.onpress});

  final Color colour;
  final Widget? cardChild;
  final dynamic onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
