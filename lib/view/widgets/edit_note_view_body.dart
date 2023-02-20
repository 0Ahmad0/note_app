import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/custom_appbar.dart';
import 'package:note_app/view/widgets/custom_textfiled.dart';

class EditNoteViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0
        ),
        child: Column(
          children: const [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
             SizedBox(height: 50.0,),
            CustomTextFiled(
              hint: 'Title',
            ),
            const SizedBox(height: 24.0,),
            CustomTextFiled(
              hint: 'Content',
              maxLine: 5,
            )
          ],
        ),
      ),
    );
  }
}
