import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key,
  this.color = KPrimaryColor,
  required this.text,
   this.textColor = Colors.black, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
          primary: color,
          minimumSize: Size(double.infinity,60.0)
      ),
      onPressed: onPressed,
      child: Text(text,style: TextStyle(
        color: textColor
      ),),
    );
  }
}
