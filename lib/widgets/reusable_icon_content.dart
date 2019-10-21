import 'package:flutter/material.dart';

import '../constances.dart';

class ResuableIconContent extends StatelessWidget {
  final IconData fontIcon;
  final String contentText;

  const ResuableIconContent({
    @required this.fontIcon,
    @required this.contentText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          fontIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          contentText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
