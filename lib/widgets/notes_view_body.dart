import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/custome_search_icon.dart';
import 'package:todo_app_tharawt/widgets/notes_card.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notes', style: TextStyle(fontSize: 28)),
                CustomeSearchIcon(),
              ],
            ),
            NotesCard(),
          ],
        ),
      ),
    );
  }
}
