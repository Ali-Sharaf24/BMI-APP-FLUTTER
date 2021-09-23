import 'package:flutter/material.dart';
import 'Constants.dart';
//............BottomButton...................

class BottomButton extends StatelessWidget {
  const BottomButton({required this.buttonTitle, required this.onTap});
  final onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.all(10),
        height: KBottomContainerHeight,
        decoration: BoxDecoration(
          color: KBottomContainerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
      ),
    );
  }
}