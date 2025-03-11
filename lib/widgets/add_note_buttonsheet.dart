import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/Constents.dart';
import 'package:todo_app_tharawt/widgets/custome_button.dart';
import 'package:todo_app_tharawt/widgets/custome_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomeTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomeTextField(hint: 'Content ', maxLines: 5),
            SizedBox(height: 30),
            CustomeButton(),
          ],
        ),
      ),
    );
  }
}
