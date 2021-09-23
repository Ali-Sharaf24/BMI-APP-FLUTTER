
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onpress});

  final IconData icon;
  final  onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      disabledElevation: 6.0,
      shape: CircleBorder(),
      fillColor:Color(0xFF4C4F5E),
    );
  }
}