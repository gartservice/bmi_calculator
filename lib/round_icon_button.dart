import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints(
          minWidth: 50.0,
          minHeight: 50.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),


    );
  }
}