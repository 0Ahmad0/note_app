import 'package:flutter/material.dart';
import 'package:note_app/view/constants.dart';

class CustomTextFiled extends StatelessWidget {
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;
  const CustomTextFiled({super.key,
  required this.hint,
  this.maxLine = 1,
  this.onSaved
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      onSaved: onSaved,
      validator: (val){
        if(val!.trim().isEmpty)return 'Field This Required';
        return null;
      },
      maxLines: maxLine,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(color: KPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder({color = Colors.white}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: color));
  }
}
