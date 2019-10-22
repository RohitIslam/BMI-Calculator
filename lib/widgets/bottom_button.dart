import 'package:flutter/material.dart';

import '../constances.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton({
    @required this.onTap,
    @required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 10),
        // padding: EdgeInsets.only(bottom: 10),
        color: kBottomContainerColor,
        width: double.infinity,
        height: 80,
        child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
