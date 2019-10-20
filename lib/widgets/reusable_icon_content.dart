import 'package:flutter/material.dart';

class ResuableIconContent extends StatelessWidget {
  final IconData fontIcon;
  final String contentText;
  final Color contentTextColor;

  const ResuableIconContent({
    @required this.fontIcon,
    @required this.contentText,
    @required this.contentTextColor,
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
          style: TextStyle(
            fontSize: 20,
            color: contentTextColor,
          ),
        ),
      ],
    );
  }
}
