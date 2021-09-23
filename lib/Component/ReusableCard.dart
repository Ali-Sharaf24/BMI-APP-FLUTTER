import 'package:flutter/material.dart';

//................ReusableCard................
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour,required this.cardChild, this.onpress});
  final Color colour;
  final Widget cardChild;
  final  onpress ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
      ),
    );
  }
}






