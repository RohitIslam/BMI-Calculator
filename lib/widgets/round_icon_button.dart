import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  const RoundIconButton({
    @required this.icon,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      child: Icon(icon),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPress,
    );
  }
}
