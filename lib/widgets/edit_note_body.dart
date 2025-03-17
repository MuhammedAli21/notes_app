import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/custome_serach_bar.dart';
import 'package:todo_app_tharawt/widgets/custome_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustomeSearchBar(title: 'Edit Notes', icon: Icons.check),
            SizedBox(height: 50),
            CustomeTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomeTextField(hint: 'Content', maxLines: 10),
          ],
        ),
      ),
    );
  }
}
