import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/custome_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [CustomeTextField()]),
    );
  }
}
