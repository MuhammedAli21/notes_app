import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/notes_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NotesCard();
      },
    );
  }
}
