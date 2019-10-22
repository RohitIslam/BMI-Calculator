import 'package:flutter/material.dart';

class ResultBodyText extends StatelessWidget {
  final String bodyText;

  const ResultBodyText(this.bodyText);

  @override
  Widget build(BuildContext context) {
    return Text(
      bodyText,
      style: TextStyle(
        fontSize: 22,
      ),
      textAlign: TextAlign.center,
    );
  }
}
